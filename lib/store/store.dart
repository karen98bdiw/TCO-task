import 'package:get_it/get_it.dart';
import 'package:tco_task/services/db_service.dart';
import 'package:tco_task/store/location/location_state.dart';

registerSingletons() {
  GetIt.I.registerSingleton<LocationState>(
    LocationState(),
  );
  registerServices();
}

registerServices() {
  GetIt.I.registerSingleton<DbService>(DbService());
}

unregisterSingletons() {}
