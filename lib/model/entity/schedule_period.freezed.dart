// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_period.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SchedulePeriod _$SchedulePeriodFromJson(Map<String, dynamic> json) {
  return _SchedulePeriod.fromJson(json);
}

/// @nodoc
mixin _$SchedulePeriod {
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchedulePeriodCopyWith<SchedulePeriod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulePeriodCopyWith<$Res> {
  factory $SchedulePeriodCopyWith(
          SchedulePeriod value, $Res Function(SchedulePeriod) then) =
      _$SchedulePeriodCopyWithImpl<$Res>;
  $Res call({DateTime startTime, DateTime endTime});
}

/// @nodoc
class _$SchedulePeriodCopyWithImpl<$Res>
    implements $SchedulePeriodCopyWith<$Res> {
  _$SchedulePeriodCopyWithImpl(this._value, this._then);

  final SchedulePeriod _value;
  // ignore: unused_field
  final $Res Function(SchedulePeriod) _then;

  @override
  $Res call({
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_value.copyWith(
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_SchedulePeriodCopyWith<$Res>
    implements $SchedulePeriodCopyWith<$Res> {
  factory _$$_SchedulePeriodCopyWith(
          _$_SchedulePeriod value, $Res Function(_$_SchedulePeriod) then) =
      __$$_SchedulePeriodCopyWithImpl<$Res>;
  @override
  $Res call({DateTime startTime, DateTime endTime});
}

/// @nodoc
class __$$_SchedulePeriodCopyWithImpl<$Res>
    extends _$SchedulePeriodCopyWithImpl<$Res>
    implements _$$_SchedulePeriodCopyWith<$Res> {
  __$$_SchedulePeriodCopyWithImpl(
      _$_SchedulePeriod _value, $Res Function(_$_SchedulePeriod) _then)
      : super(_value, (v) => _then(v as _$_SchedulePeriod));

  @override
  _$_SchedulePeriod get _value => super._value as _$_SchedulePeriod;

  @override
  $Res call({
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$_SchedulePeriod(
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SchedulePeriod extends _SchedulePeriod {
  const _$_SchedulePeriod({required this.startTime, required this.endTime})
      : super._();

  factory _$_SchedulePeriod.fromJson(Map<String, dynamic> json) =>
      _$$_SchedulePeriodFromJson(json);

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;

  @override
  String toString() {
    return 'SchedulePeriod(startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SchedulePeriod &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.endTime, endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(endTime));

  @JsonKey(ignore: true)
  @override
  _$$_SchedulePeriodCopyWith<_$_SchedulePeriod> get copyWith =>
      __$$_SchedulePeriodCopyWithImpl<_$_SchedulePeriod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SchedulePeriodToJson(
      this,
    );
  }
}

abstract class _SchedulePeriod extends SchedulePeriod {
  const factory _SchedulePeriod(
      {required final DateTime startTime,
      required final DateTime endTime}) = _$_SchedulePeriod;
  const _SchedulePeriod._() : super._();

  factory _SchedulePeriod.fromJson(Map<String, dynamic> json) =
      _$_SchedulePeriod.fromJson;

  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  @JsonKey(ignore: true)
  _$$_SchedulePeriodCopyWith<_$_SchedulePeriod> get copyWith =>
      throw _privateConstructorUsedError;
}
