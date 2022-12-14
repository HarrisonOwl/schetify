// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../test_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestWeather _$TestWeatherFromJson(Map<String, dynamic> json) {
  return _TestWeather.fromJson(json);
}

/// @nodoc
mixin _$TestWeather {
  String get date => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestWeatherCopyWith<TestWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestWeatherCopyWith<$Res> {
  factory $TestWeatherCopyWith(
          TestWeather value, $Res Function(TestWeather) then) =
      _$TestWeatherCopyWithImpl<$Res>;
  $Res call({String date, String name, String type});
}

/// @nodoc
class _$TestWeatherCopyWithImpl<$Res> implements $TestWeatherCopyWith<$Res> {
  _$TestWeatherCopyWithImpl(this._value, this._then);

  final TestWeather _value;
  // ignore: unused_field
  final $Res Function(TestWeather) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TestWeatherCopyWith<$Res>
    implements $TestWeatherCopyWith<$Res> {
  factory _$$_TestWeatherCopyWith(
          _$_TestWeather value, $Res Function(_$_TestWeather) then) =
      __$$_TestWeatherCopyWithImpl<$Res>;
  @override
  $Res call({String date, String name, String type});
}

/// @nodoc
class __$$_TestWeatherCopyWithImpl<$Res> extends _$TestWeatherCopyWithImpl<$Res>
    implements _$$_TestWeatherCopyWith<$Res> {
  __$$_TestWeatherCopyWithImpl(
      _$_TestWeather _value, $Res Function(_$_TestWeather) _then)
      : super(_value, (v) => _then(v as _$_TestWeather));

  @override
  _$_TestWeather get _value => super._value as _$_TestWeather;

  @override
  $Res call({
    Object? date = freezed,
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_TestWeather(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestWeather implements _TestWeather {
  const _$_TestWeather(
      {required this.date, required this.name, required this.type});

  factory _$_TestWeather.fromJson(Map<String, dynamic> json) =>
      _$$_TestWeatherFromJson(json);

  @override
  final String date;
  @override
  final String name;
  @override
  final String type;

  @override
  String toString() {
    return 'TestWeather(date: $date, name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestWeather &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_TestWeatherCopyWith<_$_TestWeather> get copyWith =>
      __$$_TestWeatherCopyWithImpl<_$_TestWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestWeatherToJson(
      this,
    );
  }
}

abstract class _TestWeather implements TestWeather {
  const factory _TestWeather(
      {required final String date,
      required final String name,
      required final String type}) = _$_TestWeather;

  factory _TestWeather.fromJson(Map<String, dynamic> json) =
      _$_TestWeather.fromJson;

  @override
  String get date;
  @override
  String get name;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_TestWeatherCopyWith<_$_TestWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
