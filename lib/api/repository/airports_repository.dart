import 'dart:convert';
import 'dart:developer';

import 'package:tco_task/api/http/dio.dart';
import 'package:tco_task/constats/enviroment.dart';
import 'package:tco_task/models/airport/airport_model.dart';

class AirportsRepository {
  static Future<List<AirportModel>> getAirports() async {
    log('_GET DATA FROM API');
    final res = await dio.get(AppEnv.airport);

    return (jsonDecode(res.data) as List)
        .map((e) => AirportModel.fromJson(e))
        .toList();
  }
}
