import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:tco_task/api/http/dio.dart';
import 'package:tco_task/store/store.dart';

import 'app.dart';

Future<void> run() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await _init();

  runApp(const MyApp());
}

Future<void> main() async {
  await run();
}

Future<void> _init() async {
  log('app init');
  initDio();
  registerSingletons();
}
