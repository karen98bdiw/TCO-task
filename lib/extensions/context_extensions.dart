import 'package:flutter/material.dart';
import 'package:tco_task/constats/size_constats.dart';

extension AppTheme on BuildContext {
  ThemeData get themeData => Theme.of(this);

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  double sizeFromWidth(double value) => value * width / templateWidth;

  double sizeFromHeight(double value) => value * height / templateHeight;

  double get safeAreaBottom => MediaQuery.of(this).padding.bottom;
}
