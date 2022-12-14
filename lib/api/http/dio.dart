import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:tco_task/constats/enviroment.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: AppEnv.baseUrl,
    connectTimeout: 20000,
  ),
);

void initDio() {
  // dio.interceptors.addAll([
  //   LogInterceptor(
  //       request: true,
  //       requestBody: true,
  //       requestHeader: true,
  //       responseBody: true,
  //       responseHeader: true,
  //       logPrint: (e) {
  //         log(e.toString());
  //       }),
  // ]);
}
