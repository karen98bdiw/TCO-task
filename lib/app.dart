import 'package:flutter/material.dart';
import 'package:tco_task/theme/light_theme.dart';

import 'app_router/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: lightTheme,
      darkTheme: lightTheme,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(
        navigatorObservers: () => [],
      ),
    );
  }
}
