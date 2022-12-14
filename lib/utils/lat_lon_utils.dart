// import 'package:flutter_map/flutter_map.dart';
// import 'package:latlong2/latlong.dart';

// LatLngBounds boundsFromLatLngList(List<LatLng> list) {
//   assert(list.isNotEmpty);
//   double? x0, x1, y0, y1;
//   for (final latLng in list) {
//     if (x0 == null) {
//       x0 = x1 = latLng.latitude;
//       y0 = y1 = latLng.longitude;
//     } else {
//       if (latLng.latitude > x1!) {
//         x1 = latLng.latitude;
//       }
//       if (latLng.latitude < x0) {
//         x0 = latLng.latitude;
//       }
//       if (latLng.longitude > y1!) {
//         y1 = latLng.longitude;
//       }
//       if (latLng.longitude < y0!) {
//         y0 = latLng.longitude;
//       }
//     }
//   }
//   return LatLngBounds(
//     LatLng(x1!, y1!),
//     LatLng(
//       x0!,
//       y0!,
//     ),
//   );
// }
