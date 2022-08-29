// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedules_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SchedulesState {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  List<TestWeather> get schedules => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchedulesStateCopyWith<SchedulesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulesStateCopyWith<$Res> {
  factory $SchedulesStateCopyWith(
          SchedulesState value, $Res Function(SchedulesState) then) =
      _$SchedulesStateCopyWithImpl<$Res>;
  $Res call({bool loading, bool error, List<TestWeather> schedules});
}

/// @nodoc
class _$SchedulesStateCopyWithImpl<$Res>
    implements $SchedulesStateCopyWith<$Res> {
  _$SchedulesStateCopyWithImpl(this._value, this._then);

  final SchedulesState _value;
  // ignore: unused_field
  final $Res Function(SchedulesState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? schedules = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      schedules: schedules == freezed
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<TestWeather>,
    ));
  }
}

/// @nodoc
abstract class _$$_SchedulesStateCopyWith<$Res>
    implements $SchedulesStateCopyWith<$Res> {
  factory _$$_SchedulesStateCopyWith(
          _$_SchedulesState value, $Res Function(_$_SchedulesState) then) =
      __$$_SchedulesStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, bool error, List<TestWeather> schedules});
}

/// @nodoc
class __$$_SchedulesStateCopyWithImpl<$Res>
    extends _$SchedulesStateCopyWithImpl<$Res>
    implements _$$_SchedulesStateCopyWith<$Res> {
  __$$_SchedulesStateCopyWithImpl(
      _$_SchedulesState _value, $Res Function(_$_SchedulesState) _then)
      : super(_value, (v) => _then(v as _$_SchedulesState));

  @override
  _$_SchedulesState get _value => super._value as _$_SchedulesState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? schedules = freezed,
  }) {
    return _then(_$_SchedulesState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      schedules: schedules == freezed
          ? _value._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<TestWeather>,
    ));
  }
}

/// @nodoc

class _$_SchedulesState implements _SchedulesState {
  const _$_SchedulesState(
      {required this.loading,
      required this.error,
      required final List<TestWeather> schedules})
      : _schedules = schedules;

  @override
  final bool loading;
  @override
  final bool error;
  final List<TestWeather> _schedules;
  @override
  List<TestWeather> get schedules {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedules);
  }

  @override
  String toString() {
    return 'SchedulesState(loading: $loading, error: $error, schedules: $schedules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SchedulesState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._schedules, _schedules));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_schedules));

  @JsonKey(ignore: true)
  @override
  _$$_SchedulesStateCopyWith<_$_SchedulesState> get copyWith =>
      __$$_SchedulesStateCopyWithImpl<_$_SchedulesState>(this, _$identity);
}

abstract class _SchedulesState implements SchedulesState {
  const factory _SchedulesState(
      {required final bool loading,
      required final bool error,
      required final List<TestWeather> schedules}) = _$_SchedulesState;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  List<TestWeather> get schedules;
  @override
  @JsonKey(ignore: true)
  _$$_SchedulesStateCopyWith<_$_SchedulesState> get copyWith =>
      throw _privateConstructorUsedError;
}
