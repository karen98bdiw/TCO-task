import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tco_task/extensions/context_extensions.dart';
import 'package:tco_task/models/airport/airport_model.dart';
import 'package:tco_task/store/airport_marker/airport_marker_state.dart';
import 'package:tco_task/theme/app_colors.dart';

import '../store/airports/airports_state.dart';

class AirportMarker extends StatelessWidget {
  final AirportModel airportModel;
  final AirportMarkerState markerState;
  final AirportsState airportsState;
  const AirportMarker({
    super.key,
    required this.airportModel,
    required this.markerState,
    required this.airportsState,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        markerState.toogleDisplatMode();
        if (markerState.showAirportData) {
          airportsState.drawPolilyneToAirport(airportModel);
        } else {
          airportsState.clearPolylines();
        }
      },
      child: Observer(builder: (context) {
        return Container(
          color: Colors.red.withOpacity(0.7),
          padding: const EdgeInsets.all(5),
          child: markerState.showAirportData
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      airportModel.name,
                      style: context.themeData.textTheme.caption?.copyWith(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      airportModel.country,
                      style: context.themeData.textTheme.caption?.copyWith(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                )
              : const Center(
                  child: Icon(
                    Icons.local_airport_rounded,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
        );
      }),
    );
  }
}
