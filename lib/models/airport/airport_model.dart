import 'package:freezed_annotation/freezed_annotation.dart';

part 'airport_model.freezed.dart';
part 'airport_model.g.dart';

@freezed
class AirportModel with _$AirportModel {
  factory AirportModel({
    required String code,
    required String lat,
    required String lon,
    required String name,
    required String country,
  }) = _AirportModel;

  factory AirportModel.fromJson(Map<String, dynamic> json) =>
      _$AirportModelFromJson(json);
}
