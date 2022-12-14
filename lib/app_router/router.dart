import 'package:auto_route/auto_route.dart';
import 'package:tco_task/pages/request_location/request_location.dart';

import '../pages/airports_page/airports_page.dart';

@AdaptiveAutoRouter(
  preferRelativeImports: true,
  replaceInRouteName: 'Page,Route',
  routes: [
    AdaptiveRoute(
      page: RequestLocation,
      initial: true,
    ),
    AdaptiveRoute(
      page: AirportsPage,
    ),
  ],
)
class $Router {}
