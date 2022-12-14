import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tco_task/extensions/context_extensions.dart';
import 'package:tco_task/mixins/afterFirstLayou.dart';
import 'package:tco_task/store/location/location_state.dart';
import 'package:tco_task/theme/app_strings.dart';
import 'package:tco_task/widgets/app_button.dart';
import 'package:get_it/get_it.dart';

class RequestLocation extends StatefulWidget {
  const RequestLocation({super.key});

  @override
  State<RequestLocation> createState() => _RequestLocationState();
}

class _RequestLocationState extends State<RequestLocation>
    with AfterLayoutMixin {
  final locationState = GetIt.I<LocationState>();

  @override
  void afterFirstLayout(BuildContext context) {
    locationState.checkLocationPermission(
      fromInitalCall: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.sizeFromWidth(30),
            vertical: context.sizeFromHeight(50),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.requestLocationMessage,
                style: context.themeData.textTheme.headline3?.copyWith(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              Observer(builder: (_) {
                return AppButton(
                  showLoading:
                      locationState.locationServiceLoadingState.isLoading,
                  title: AppStrings.allowLocation,
                  onPressed: locationState.checkLocationPermission,
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
