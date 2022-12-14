import 'dart:developer';

import 'package:location/location.dart' as loc;
import 'package:mobx/mobx.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tco_task/app_router/app_router.dart';
import 'package:tco_task/app_router/router.gr.dart';
import 'package:tco_task/modals/error_dialog.dart';
import 'package:tco_task/store/loading/loading_state.dart';
import 'package:tco_task/theme/app_strings.dart';

part 'location_state.g.dart';

class LocationState = _LocationState with _$LocationState;

abstract class _LocationState with Store {
  final locationServiceLoadingState = LoadingState();
  final location = loc.Location();

  @observable
  Position? userCurrentLocation;

  @action
  Future<void> checkLocationPermission({
    bool fromInitalCall = false,
  }) async {
    try {
      locationServiceLoadingState.showLoading();
      final locationEnbled = await locationServiceEnabled();
      if (!locationEnbled) {
        showErrorDialog(
          message: [
            AppStrings.locationServiceDisabled,
          ],
        );
        return;
      }
      final permissionForeverDenied = await checkPermissionForeverDenied();
      if (permissionForeverDenied) {
        showErrorDialog(
            message: [
              AppStrings.locationForeverDeniedErrorMessage,
            ],
            actionTitle: 'Open device settings',
            onActionPress: () {
              openAppSettings();
            });
        return;
      }

      final hasPermission = await hasLocatoinPermission();

      if (hasPermission) {
        await getUserPosition();
        return;
      }

      if (fromInitalCall) {
        return;
      }

      await Geolocator.requestPermission();

      final permissionGranted = await hasLocatoinPermission();

      if (permissionGranted) {
        await getUserPosition();
        return;
      }

      showErrorDialog(
        message: [
          AppStrings.locationDeniedErrorMessage,
        ],
        actionTitle: 'Open device settings',
        onActionPress: () {
          openAppSettings();
        },
      );
    } catch (e) {
      showErrorDialog(
        message: [e.toString()],
      );
    } finally {
      locationServiceLoadingState.hideLoading();
      if (hasUserLocation) {
        appRouter.push(const AirportsRoute());
      }
    }
  }

  bool get hasUserLocation => userCurrentLocation != null;

  @action
  Future<void> getUserPosition() async {
    userCurrentLocation = await Geolocator.getCurrentPosition();
  }

  @action
  Future<bool> locationServiceEnabled() async {
    final locationEnable = await Geolocator.isLocationServiceEnabled();
    return locationEnable;
  }

  @action
  Future<bool> hasLocatoinPermission() async {
    final permission = await Geolocator.checkPermission();
    return permission != LocationPermission.denied &&
        permission != LocationPermission.deniedForever;
  }

  @action
  Future<bool> checkPermissionForeverDenied() async {
    final permission = await Geolocator.checkPermission();
    return permission == LocationPermission.deniedForever;
  }

  @action
  Future<void> listenToLocationChange() async {
    location.changeSettings(
      accuracy: loc.LocationAccuracy.high,
      distanceFilter: 1,
    );
    location.onLocationChanged.listen((event) async {
      log('_ON LOCATION CHANGE');
      await getUserPosition();
    });
  }
}
