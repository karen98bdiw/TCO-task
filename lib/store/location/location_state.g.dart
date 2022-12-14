// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LocationState on _LocationState, Store {
  late final _$userCurrentLocationAtom =
      Atom(name: '_LocationState.userCurrentLocation', context: context);

  @override
  Position? get userCurrentLocation {
    _$userCurrentLocationAtom.reportRead();
    return super.userCurrentLocation;
  }

  @override
  set userCurrentLocation(Position? value) {
    _$userCurrentLocationAtom.reportWrite(value, super.userCurrentLocation, () {
      super.userCurrentLocation = value;
    });
  }

  late final _$checkLocationPermissionAsyncAction =
      AsyncAction('_LocationState.checkLocationPermission', context: context);

  @override
  Future<void> checkLocationPermission({bool fromInitalCall = false}) {
    return _$checkLocationPermissionAsyncAction.run(
        () => super.checkLocationPermission(fromInitalCall: fromInitalCall));
  }

  late final _$getUserPositionAsyncAction =
      AsyncAction('_LocationState.getUserPosition', context: context);

  @override
  Future<void> getUserPosition() {
    return _$getUserPositionAsyncAction.run(() => super.getUserPosition());
  }

  late final _$locationServiceEnabledAsyncAction =
      AsyncAction('_LocationState.locationServiceEnabled', context: context);

  @override
  Future<bool> locationServiceEnabled() {
    return _$locationServiceEnabledAsyncAction
        .run(() => super.locationServiceEnabled());
  }

  late final _$hasLocatoinPermissionAsyncAction =
      AsyncAction('_LocationState.hasLocatoinPermission', context: context);

  @override
  Future<bool> hasLocatoinPermission() {
    return _$hasLocatoinPermissionAsyncAction
        .run(() => super.hasLocatoinPermission());
  }

  late final _$checkPermissionForeverDeniedAsyncAction = AsyncAction(
      '_LocationState.checkPermissionForeverDenied',
      context: context);

  @override
  Future<bool> checkPermissionForeverDenied() {
    return _$checkPermissionForeverDeniedAsyncAction
        .run(() => super.checkPermissionForeverDenied());
  }

  late final _$listenToLocationChangeAsyncAction =
      AsyncAction('_LocationState.listenToLocationChange', context: context);

  @override
  Future<void> listenToLocationChange() {
    return _$listenToLocationChangeAsyncAction
        .run(() => super.listenToLocationChange());
  }

  @override
  String toString() {
    return '''
userCurrentLocation: ${userCurrentLocation}
    ''';
  }
}
