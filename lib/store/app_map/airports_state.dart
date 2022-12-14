import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:mobx/mobx.dart';
import 'package:tco_task/api/repository/airports_repository.dart';
import 'package:tco_task/extensions/location_extensions.dart';
import 'package:tco_task/modals/error_dialog.dart';
import 'package:tco_task/models/airport/airport_model.dart';
import 'package:tco_task/services/db_service.dart';
import 'package:tco_task/store/airport_marker/airport_marker_state.dart';
import 'package:tco_task/store/loading/loading_state.dart';
import 'package:get_it/get_it.dart';
import 'package:tco_task/store/location/location_state.dart';

import '../../utils/lat_lon_utils.dart';

part 'airports_state.g.dart';

class AirportsState = _AirportsState with _$AirportsState;

abstract class _AirportsState with Store {
  final appMapStateLoading = LoadingState();
  final myDb = GetIt.I<DbService>();
  final locationState = GetIt.I<LocationState>();

  @observable
  ObservableList<AirportModel> airports = <AirportModel>[].asObservable();
  @observable
  ObservableList<AirportModel> nearesAirports = <AirportModel>[].asObservable();
  @observable
  LatLngBounds? nearestLatLongBound;
  @observable
  List<Polyline> polilinesToSelectedAirports = [];

  final mapController = MapController();

  Future<void> getAiroports() async {
    try {
      appMapStateLoading.showLoading();
      final storedAirports = await readAirports();
      if (storedAirports.isNotEmpty) {
        log('_STORED DATA IS NOT EMPTY');
        airports = storedAirports.asObservable();
      } else {
        final res = await AirportsRepository.getAirports();
        await insertDateInDb(res);
        airports = res.asObservable();
      }
      await sortAirportsByDistanceFromCurrentLocation();
      findNearestAirports();
      drawNearestAirports();
    } catch (e) {
      showErrorDialog(message: [e.toString()]);
    } finally {
      appMapStateLoading.hideLoading();
      log('_GET AIRPORT SUCCESS');
    }
  }

  Future<List<AirportModel>> readAirports() async {
    log('_READING DATA FROM DB');
    return await myDb.getAllAirports();
  }

  Future<void> insertDateInDb(List<AirportModel> airports) async {
    log('_INSERTING DATA INTO DB');
    final db = await myDb.database;
    airports.forEach((element) {
      myDb.createAirport(element);
    });
  }

  Future<void> findNearestAirports() async {
    final nearest = <AirportModel>[];
    if (airports.isNotEmpty) {
      nearest.add(airports[0]);
    }
    if (airports.length >= 2) {
      nearest.add(airports[1]);
    }
    nearesAirports = nearest.asObservable();
    showSuccesDialog(message: [
      'Nearest airports is',
      ...nearest.map((e) => e.name).toList(),
    ]);
  }

  @action
  Future<void> drawNearestAirports() async {
    final nearesAirportsPositionBound = nearesAirports
        .map(
          (element) => element.toLatLon,
        )
        .toList();
    nearestLatLongBound = LatLngBounds.fromPoints(nearesAirportsPositionBound);
    mapController.fitBounds(
      nearestLatLongBound!,
      options: const FitBoundsOptions(
        padding: EdgeInsets.all(20),
      ),
    );
  }

  Future<void> sortAirportsByDistanceFromCurrentLocation() async {
    log('_SORTING AIRPORT DATA');
    final currentUserLat = locationState.userCurrentLocation!.latitude;
    final currentUserLong = locationState.userCurrentLocation!.longitude;
    airports.sort((a, b) {
      final firstItemDistanceFromUserPosition = Geolocator.distanceBetween(
          currentUserLat,
          currentUserLong,
          double.parse(a.lat),
          double.parse(a.lon));
      final secondItemDistanceFromUserPosition = Geolocator.distanceBetween(
          currentUserLat,
          currentUserLong,
          double.parse(b.lat),
          double.parse(b.lon));
      return (firstItemDistanceFromUserPosition -
              secondItemDistanceFromUserPosition)
          .toInt();
    });
  }

  @action
  Future<void> drawPolilyneToAirport(AirportModel airportModel) async {
    Path path = Path.from([
      locationState.userCurrentLocation!.toLatLng!,
      airportModel.toLatLon,
    ]);
    polilinesToSelectedAirports = [
      Polyline(
        strokeWidth: 4,
        points: path.coordinates,
      ),
    ];
  }

  @action
  void clearPolylines() {
    polilinesToSelectedAirports = [];
  }
}
