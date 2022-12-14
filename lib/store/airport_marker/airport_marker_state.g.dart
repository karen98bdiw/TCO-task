// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airport_marker_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AirportMarkerState on _AirportMarkerState, Store {
  late final _$showAirportDataAtom =
      Atom(name: '_AirportMarkerState.showAirportData', context: context);

  @override
  bool get showAirportData {
    _$showAirportDataAtom.reportRead();
    return super.showAirportData;
  }

  @override
  set showAirportData(bool value) {
    _$showAirportDataAtom.reportWrite(value, super.showAirportData, () {
      super.showAirportData = value;
    });
  }

  late final _$_AirportMarkerStateActionController =
      ActionController(name: '_AirportMarkerState', context: context);

  @override
  void toogleDisplatMode() {
    final _$actionInfo = _$_AirportMarkerStateActionController.startAction(
        name: '_AirportMarkerState.toogleDisplatMode');
    try {
      return super.toogleDisplatMode();
    } finally {
      _$_AirportMarkerStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showAirportData: ${showAirportData}
    ''';
  }
}
