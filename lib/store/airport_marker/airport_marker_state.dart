import 'package:mobx/mobx.dart';

part 'airport_marker_state.g.dart';

class AirportMarkerState = _AirportMarkerState with _$AirportMarkerState;

abstract class _AirportMarkerState with Store {
  @observable
  bool showAirportData = false;

  @action
  void toogleDisplatMode() {
    showAirportData = !showAirportData;
  }
}
