import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:tco_task/extensions/context_extensions.dart';
import 'package:tco_task/extensions/location_extensions.dart';
import 'package:tco_task/mixins/afterFirstLayou.dart';
import 'package:tco_task/store/airport_marker/airport_marker_state.dart';
import 'package:tco_task/store/app_map/airports_state.dart';
import 'package:tco_task/store/location/location_state.dart';
import 'package:tco_task/widgets/airport_marker_widget.dart';
import 'package:tco_task/widgets/current_user_marker.dart';

class AirportsPage extends StatefulWidget {
  const AirportsPage({super.key});

  @override
  State<AirportsPage> createState() => _AirportsPage();
}

class _AirportsPage extends State<AirportsPage> with AfterLayoutMixin {
  final locatonState = GetIt.I<LocationState>();
  final airportsState = AirportsState();

  @override
  void afterFirstLayout(BuildContext context) {
    locatonState.listenToLocationChange();
  }

  @override
  void initState() {
    airportsState.getAiroports();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: airportsState.mapController,
            options: MapOptions(),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              Observer(builder: (context) {
                return PolylineLayer(
                  saveLayers: true,
                  polylineCulling: true,
                  polylines: airportsState.polilinesToSelectedAirports,
                );
              }),
              Observer(builder: (_) {
                return MarkerLayer(
                  markers: [
                    Marker(
                        width: context.sizeFromWidth(30),
                        height: context.sizeFromWidth(30),
                        point: locatonState.userCurrentLocation!.toLatLng!,
                        builder: (_) {
                          return const CurrentUserMarker();
                        })
                  ],
                );
              }),
              Observer(builder: (context) {
                return MarkerLayer(
                  markers: [
                    ...airportsState.nearesAirports
                        .map(
                          (element) => Marker(
                            width: context.sizeFromWidth(80),
                            height: context.sizeFromWidth(80),
                            point: element.toLatLon,
                            builder: (_) {
                              return AirportMarker(
                                airportsState: airportsState,
                                airportModel: element,
                                markerState: AirportMarkerState(),
                              );
                            },
                          ),
                        )
                        .toList()
                  ],
                );
              }),
            ],
          ),
          _loading,
        ],
      ),
    );
  }

  Widget get _loading => Observer(builder: (_) {
        if (airportsState.appMapStateLoading.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        return const SizedBox();
      });
}
