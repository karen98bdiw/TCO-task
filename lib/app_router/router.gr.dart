// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../pages/airports_page/airports_page.dart' as _i2;
import '../pages/request_location/request_location.dart' as _i1;

class Router extends _i3.RootStackRouter {
  Router([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    RequestLocation.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.RequestLocation(),
      );
    },
    AirportsRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.AirportsPage(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          RequestLocation.name,
          path: '/',
        ),
        _i3.RouteConfig(
          AirportsRoute.name,
          path: '/airports-page',
        ),
      ];
}

/// generated route for
/// [_i1.RequestLocation]
class RequestLocation extends _i3.PageRouteInfo<void> {
  const RequestLocation()
      : super(
          RequestLocation.name,
          path: '/',
        );

  static const String name = 'RequestLocation';
}

/// generated route for
/// [_i2.AirportsPage]
class AirportsRoute extends _i3.PageRouteInfo<void> {
  const AirportsRoute()
      : super(
          AirportsRoute.name,
          path: '/airports-page',
        );

  static const String name = 'AirportsRoute';
}
