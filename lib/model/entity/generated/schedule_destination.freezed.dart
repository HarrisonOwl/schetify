// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../schedule_destination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleDestination _$ScheduleDestinationFromJson(Map<String, dynamic> json) {
  return _ScheduleDestination.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDestination {
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleDestinationCopyWith<ScheduleDestination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDestinationCopyWith<$Res> {
  factory $ScheduleDestinationCopyWith(
          ScheduleDestination value, $Res Function(ScheduleDestination) then) =
      _$ScheduleDestinationCopyWithImpl<$Res>;
  $Res call(
      {String? name, String? address, double? latitude, double? longitude});
}

/// @nodoc
class _$ScheduleDestinationCopyWithImpl<$Res>
    implements $ScheduleDestinationCopyWith<$Res> {
  _$ScheduleDestinationCopyWithImpl(this._value, this._then);

  final ScheduleDestination _value;
  // ignore: unused_field
  final $Res Function(ScheduleDestination) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_ScheduleDestinationCopyWith<$Res>
    implements $ScheduleDestinationCopyWith<$Res> {
  factory _$$_ScheduleDestinationCopyWith(_$_ScheduleDestination value,
          $Res Function(_$_ScheduleDestination) then) =
      __$$_ScheduleDestinationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name, String? address, double? latitude, double? longitude});
}

/// @nodoc
class __$$_ScheduleDestinationCopyWithImpl<$Res>
    extends _$ScheduleDestinationCopyWithImpl<$Res>
    implements _$$_ScheduleDestinationCopyWith<$Res> {
  __$$_ScheduleDestinationCopyWithImpl(_$_ScheduleDestination _value,
      $Res Function(_$_ScheduleDestination) _then)
      : super(_value, (v) => _then(v as _$_ScheduleDestination));

  @override
  _$_ScheduleDestination get _value => super._value as _$_ScheduleDestination;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_ScheduleDestination(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleDestination extends _ScheduleDestination {
  const _$_ScheduleDestination(
      {required this.name,
      required this.address,
      required this.latitude,
      required this.longitude})
      : super._();

  factory _$_ScheduleDestination.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleDestinationFromJson(json);

  @override
  final String? name;
  @override
  final String? address;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'ScheduleDestination(name: $name, address: $address, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleDestination &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude));

  @JsonKey(ignore: true)
  @override
  _$$_ScheduleDestinationCopyWith<_$_ScheduleDestination> get copyWith =>
      __$$_ScheduleDestinationCopyWithImpl<_$_ScheduleDestination>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleDestinationToJson(
      this,
    );
  }
}

abstract class _ScheduleDestination extends ScheduleDestination {
  const factory _ScheduleDestination(
      {required final String? name,
      required final String? address,
      required final double? latitude,
      required final double? longitude}) = _$_ScheduleDestination;
  const _ScheduleDestination._() : super._();

  factory _ScheduleDestination.fromJson(Map<String, dynamic> json) =
      _$_ScheduleDestination.fromJson;

  @override
  String? get name;
  @override
  String? get address;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleDestinationCopyWith<_$_ScheduleDestination> get copyWith =>
      throw _privateConstructorUsedError;
}
