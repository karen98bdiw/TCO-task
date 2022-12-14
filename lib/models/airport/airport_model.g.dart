// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AirportModel _$$_AirportModelFromJson(Map json) => _$_AirportModel(
      code: json['code'] as String,
      lat: json['lat'] as String,
      lon: json['lon'] as String,
      name: json['name'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$$_AirportModelToJson(_$_AirportModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'lat': instance.lat,
      'lon': instance.lon,
      'name': instance.name,
      'country': instance.country,
    };
