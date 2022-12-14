import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:tco_task/models/airport/airport_model.dart';

extension LocationExtensions on Position? {
  LatLng? get toLatLng {
    if (this == null) {
      return null;
    }
    return LatLng(this!.latitude, this!.longitude);
  }
}

extension AirportLatLonHelper on AirportModel {
  LatLng get toLatLon {
    final lat = double.parse(this.lat);
    final lon = double.parse(this.lon);
    return LatLng(lat, lon);
  }
}
