// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'airport_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AirportModel _$AirportModelFromJson(Map<String, dynamic> json) {
  return _AirportModel.fromJson(json);
}

/// @nodoc
mixin _$AirportModel {
  String get code => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get lon => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirportModelCopyWith<AirportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirportModelCopyWith<$Res> {
  factory $AirportModelCopyWith(
          AirportModel value, $Res Function(AirportModel) then) =
      _$AirportModelCopyWithImpl<$Res>;
  $Res call({String code, String lat, String lon, String name, String country});
}

/// @nodoc
class _$AirportModelCopyWithImpl<$Res> implements $AirportModelCopyWith<$Res> {
  _$AirportModelCopyWithImpl(this._value, this._then);

  final AirportModel _value;
  // ignore: unused_field
  final $Res Function(AirportModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? name = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AirportModelCopyWith<$Res>
    implements $AirportModelCopyWith<$Res> {
  factory _$$_AirportModelCopyWith(
          _$_AirportModel value, $Res Function(_$_AirportModel) then) =
      __$$_AirportModelCopyWithImpl<$Res>;
  @override
  $Res call({String code, String lat, String lon, String name, String country});
}

/// @nodoc
class __$$_AirportModelCopyWithImpl<$Res>
    extends _$AirportModelCopyWithImpl<$Res>
    implements _$$_AirportModelCopyWith<$Res> {
  __$$_AirportModelCopyWithImpl(
      _$_AirportModel _value, $Res Function(_$_AirportModel) _then)
      : super(_value, (v) => _then(v as _$_AirportModel));

  @override
  _$_AirportModel get _value => super._value as _$_AirportModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? name = freezed,
    Object? country = freezed,
  }) {
    return _then(_$_AirportModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AirportModel implements _AirportModel {
  _$_AirportModel(
      {required this.code,
      required this.lat,
      required this.lon,
      required this.name,
      required this.country});

  factory _$_AirportModel.fromJson(Map<String, dynamic> json) =>
      _$$_AirportModelFromJson(json);

  @override
  final String code;
  @override
  final String lat;
  @override
  final String lon;
  @override
  final String name;
  @override
  final String country;

  @override
  String toString() {
    return 'AirportModel(code: $code, lat: $lat, lon: $lon, name: $name, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AirportModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.country, country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lon),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(country));

  @JsonKey(ignore: true)
  @override
  _$$_AirportModelCopyWith<_$_AirportModel> get copyWith =>
      __$$_AirportModelCopyWithImpl<_$_AirportModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AirportModelToJson(
      this,
    );
  }
}

abstract class _AirportModel implements AirportModel {
  factory _AirportModel(
      {required final String code,
      required final String lat,
      required final String lon,
      required final String name,
      required final String country}) = _$_AirportModel;

  factory _AirportModel.fromJson(Map<String, dynamic> json) =
      _$_AirportModel.fromJson;

  @override
  String get code;
  @override
  String get lat;
  @override
  String get lon;
  @override
  String get name;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$$_AirportModelCopyWith<_$_AirportModel> get copyWith =>
      throw _privateConstructorUsedError;
}
