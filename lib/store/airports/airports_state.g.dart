// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airports_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AirportsState on _AirportsState, Store {
  late final _$airportsAtom =
      Atom(name: '_AirportsState.airports', context: context);

  @override
  ObservableList<AirportModel> get airports {
    _$airportsAtom.reportRead();
    return super.airports;
  }

  @override
  set airports(ObservableList<AirportModel> value) {
    _$airportsAtom.reportWrite(value, super.airports, () {
      super.airports = value;
    });
  }

  late final _$nearesAirportsAtom =
      Atom(name: '_AirportsState.nearesAirports', context: context);

  @override
  ObservableList<AirportModel> get nearesAirports {
    _$nearesAirportsAtom.reportRead();
    return super.nearesAirports;
  }

  @override
  set nearesAirports(ObservableList<AirportModel> value) {
    _$nearesAirportsAtom.reportWrite(value, super.nearesAirports, () {
      super.nearesAirports = value;
    });
  }

  late final _$nearestLatLongBoundAtom =
      Atom(name: '_AirportsState.nearestLatLongBound', context: context);

  @override
  LatLngBounds? get nearestLatLongBound {
    _$nearestLatLongBoundAtom.reportRead();
    return super.nearestLatLongBound;
  }

  @override
  set nearestLatLongBound(LatLngBounds? value) {
    _$nearestLatLongBoundAtom.reportWrite(value, super.nearestLatLongBound, () {
      super.nearestLatLongBound = value;
    });
  }

  late final _$polilinesToSelectedAirportsAtom = Atom(
      name: '_AirportsState.polilinesToSelectedAirports', context: context);

  @override
  List<Polyline> get polilinesToSelectedAirports {
    _$polilinesToSelectedAirportsAtom.reportRead();
    return super.polilinesToSelectedAirports;
  }

  @override
  set polilinesToSelectedAirports(List<Polyline> value) {
    _$polilinesToSelectedAirportsAtom
        .reportWrite(value, super.polilinesToSelectedAirports, () {
      super.polilinesToSelectedAirports = value;
    });
  }

  late final _$drawNearestAirportsAsyncAction =
      AsyncAction('_AirportsState.drawNearestAirports', context: context);

  @override
  Future<void> drawNearestAirports() {
    return _$drawNearestAirportsAsyncAction
        .run(() => super.drawNearestAirports());
  }

  late final _$drawPolilyneToAirportAsyncAction =
      AsyncAction('_AirportsState.drawPolilyneToAirport', context: context);

  @override
  Future<void> drawPolilyneToAirport(AirportModel airportModel) {
    return _$drawPolilyneToAirportAsyncAction
        .run(() => super.drawPolilyneToAirport(airportModel));
  }

  late final _$_AirportsStateActionController =
      ActionController(name: '_AirportsState', context: context);

  @override
  void clearPolylines() {
    final _$actionInfo = _$_AirportsStateActionController.startAction(
        name: '_AirportsState.clearPolylines');
    try {
      return super.clearPolylines();
    } finally {
      _$_AirportsStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
airports: ${airports},
nearesAirports: ${nearesAirports},
nearestLatLongBound: ${nearestLatLongBound},
polilinesToSelectedAirports: ${polilinesToSelectedAirports}
    ''';
  }
}
