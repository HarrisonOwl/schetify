// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../schedule_days_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleDaysState _$ScheduleDaysStateFromJson(Map<String, dynamic> json) {
  return _ScheduleDaysState.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDaysState {
  bool get isSetPeriodCollectively => throw _privateConstructorUsedError;
  @SplayTreeSetConverter()
  SplayTreeSet<SchedulePeriod> get periodList =>
      throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay get defaultStartTimeOfDay => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay get defaultEndTimeOfDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleDaysStateCopyWith<ScheduleDaysState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDaysStateCopyWith<$Res> {
  factory $ScheduleDaysStateCopyWith(
          ScheduleDaysState value, $Res Function(ScheduleDaysState) then) =
      _$ScheduleDaysStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSetPeriodCollectively,
      @SplayTreeSetConverter() SplayTreeSet<SchedulePeriod> periodList,
      @TimeOfDayConverter() TimeOfDay defaultStartTimeOfDay,
      @TimeOfDayConverter() TimeOfDay defaultEndTimeOfDay});
}

/// @nodoc
class _$ScheduleDaysStateCopyWithImpl<$Res>
    implements $ScheduleDaysStateCopyWith<$Res> {
  _$ScheduleDaysStateCopyWithImpl(this._value, this._then);

  final ScheduleDaysState _value;
  // ignore: unused_field
  final $Res Function(ScheduleDaysState) _then;

  @override
  $Res call({
    Object? isSetPeriodCollectively = freezed,
    Object? periodList = freezed,
    Object? defaultStartTimeOfDay = freezed,
    Object? defaultEndTimeOfDay = freezed,
  }) {
    return _then(_value.copyWith(
      isSetPeriodCollectively: isSetPeriodCollectively == freezed
          ? _value.isSetPeriodCollectively
          : isSetPeriodCollectively // ignore: cast_nullable_to_non_nullable
              as bool,
      periodList: periodList == freezed
          ? _value.periodList
          : periodList // ignore: cast_nullable_to_non_nullable
              as SplayTreeSet<SchedulePeriod>,
      defaultStartTimeOfDay: defaultStartTimeOfDay == freezed
          ? _value.defaultStartTimeOfDay
          : defaultStartTimeOfDay // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      defaultEndTimeOfDay: defaultEndTimeOfDay == freezed
          ? _value.defaultEndTimeOfDay
          : defaultEndTimeOfDay // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc
abstract class _$$_ScheduleDaysStateCopyWith<$Res>
    implements $ScheduleDaysStateCopyWith<$Res> {
  factory _$$_ScheduleDaysStateCopyWith(_$_ScheduleDaysState value,
          $Res Function(_$_ScheduleDaysState) then) =
      __$$_ScheduleDaysStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSetPeriodCollectively,
      @SplayTreeSetConverter() SplayTreeSet<SchedulePeriod> periodList,
      @TimeOfDayConverter() TimeOfDay defaultStartTimeOfDay,
      @TimeOfDayConverter() TimeOfDay defaultEndTimeOfDay});
}

/// @nodoc
class __$$_ScheduleDaysStateCopyWithImpl<$Res>
    extends _$ScheduleDaysStateCopyWithImpl<$Res>
    implements _$$_ScheduleDaysStateCopyWith<$Res> {
  __$$_ScheduleDaysStateCopyWithImpl(
      _$_ScheduleDaysState _value, $Res Function(_$_ScheduleDaysState) _then)
      : super(_value, (v) => _then(v as _$_ScheduleDaysState));

  @override
  _$_ScheduleDaysState get _value => super._value as _$_ScheduleDaysState;

  @override
  $Res call({
    Object? isSetPeriodCollectively = freezed,
    Object? periodList = freezed,
    Object? defaultStartTimeOfDay = freezed,
    Object? defaultEndTimeOfDay = freezed,
  }) {
    return _then(_$_ScheduleDaysState(
      isSetPeriodCollectively: isSetPeriodCollectively == freezed
          ? _value.isSetPeriodCollectively
          : isSetPeriodCollectively // ignore: cast_nullable_to_non_nullable
              as bool,
      periodList: periodList == freezed
          ? _value.periodList
          : periodList // ignore: cast_nullable_to_non_nullable
              as SplayTreeSet<SchedulePeriod>,
      defaultStartTimeOfDay: defaultStartTimeOfDay == freezed
          ? _value.defaultStartTimeOfDay
          : defaultStartTimeOfDay // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      defaultEndTimeOfDay: defaultEndTimeOfDay == freezed
          ? _value.defaultEndTimeOfDay
          : defaultEndTimeOfDay // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleDaysState extends _ScheduleDaysState {
  const _$_ScheduleDaysState(
      {required this.isSetPeriodCollectively,
      @SplayTreeSetConverter() required this.periodList,
      @TimeOfDayConverter() required this.defaultStartTimeOfDay,
      @TimeOfDayConverter() required this.defaultEndTimeOfDay})
      : super._();

  factory _$_ScheduleDaysState.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleDaysStateFromJson(json);

  @override
  final bool isSetPeriodCollectively;
  @override
  @SplayTreeSetConverter()
  final SplayTreeSet<SchedulePeriod> periodList;
  @override
  @TimeOfDayConverter()
  final TimeOfDay defaultStartTimeOfDay;
  @override
  @TimeOfDayConverter()
  final TimeOfDay defaultEndTimeOfDay;

  @override
  String toString() {
    return 'ScheduleDaysState(isSetPeriodCollectively: $isSetPeriodCollectively, periodList: $periodList, defaultStartTimeOfDay: $defaultStartTimeOfDay, defaultEndTimeOfDay: $defaultEndTimeOfDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleDaysState &&
            const DeepCollectionEquality().equals(
                other.isSetPeriodCollectively, isSetPeriodCollectively) &&
            const DeepCollectionEquality()
                .equals(other.periodList, periodList) &&
            const DeepCollectionEquality()
                .equals(other.defaultStartTimeOfDay, defaultStartTimeOfDay) &&
            const DeepCollectionEquality()
                .equals(other.defaultEndTimeOfDay, defaultEndTimeOfDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isSetPeriodCollectively),
      const DeepCollectionEquality().hash(periodList),
      const DeepCollectionEquality().hash(defaultStartTimeOfDay),
      const DeepCollectionEquality().hash(defaultEndTimeOfDay));

  @JsonKey(ignore: true)
  @override
  _$$_ScheduleDaysStateCopyWith<_$_ScheduleDaysState> get copyWith =>
      __$$_ScheduleDaysStateCopyWithImpl<_$_ScheduleDaysState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleDaysStateToJson(
      this,
    );
  }
}

abstract class _ScheduleDaysState extends ScheduleDaysState {
  const factory _ScheduleDaysState(
      {required final bool isSetPeriodCollectively,
      @SplayTreeSetConverter()
          required final SplayTreeSet<SchedulePeriod> periodList,
      @TimeOfDayConverter()
          required final TimeOfDay defaultStartTimeOfDay,
      @TimeOfDayConverter()
          required final TimeOfDay defaultEndTimeOfDay}) = _$_ScheduleDaysState;
  const _ScheduleDaysState._() : super._();

  factory _ScheduleDaysState.fromJson(Map<String, dynamic> json) =
      _$_ScheduleDaysState.fromJson;

  @override
  bool get isSetPeriodCollectively;
  @override
  @SplayTreeSetConverter()
  SplayTreeSet<SchedulePeriod> get periodList;
  @override
  @TimeOfDayConverter()
  TimeOfDay get defaultStartTimeOfDay;
  @override
  @TimeOfDayConverter()
  TimeOfDay get defaultEndTimeOfDay;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleDaysStateCopyWith<_$_ScheduleDaysState> get copyWith =>
      throw _privateConstructorUsedError;
}
