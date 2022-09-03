// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../schedule_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScheduleList {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  List<Schedule> get scheduleList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleListCopyWith<ScheduleList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleListCopyWith<$Res> {
  factory $ScheduleListCopyWith(
          ScheduleList value, $Res Function(ScheduleList) then) =
      _$ScheduleListCopyWithImpl<$Res>;
  $Res call({bool loading, bool error, List<Schedule> scheduleList});
}

/// @nodoc
class _$ScheduleListCopyWithImpl<$Res> implements $ScheduleListCopyWith<$Res> {
  _$ScheduleListCopyWithImpl(this._value, this._then);

  final ScheduleList _value;
  // ignore: unused_field
  final $Res Function(ScheduleList) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? scheduleList = freezed,
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
      scheduleList: scheduleList == freezed
          ? _value.scheduleList
          : scheduleList // ignore: cast_nullable_to_non_nullable
              as List<Schedule>,
    ));
  }
}

/// @nodoc
abstract class _$$_ScheduleListCopyWith<$Res>
    implements $ScheduleListCopyWith<$Res> {
  factory _$$_ScheduleListCopyWith(
          _$_ScheduleList value, $Res Function(_$_ScheduleList) then) =
      __$$_ScheduleListCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, bool error, List<Schedule> scheduleList});
}

/// @nodoc
class __$$_ScheduleListCopyWithImpl<$Res>
    extends _$ScheduleListCopyWithImpl<$Res>
    implements _$$_ScheduleListCopyWith<$Res> {
  __$$_ScheduleListCopyWithImpl(
      _$_ScheduleList _value, $Res Function(_$_ScheduleList) _then)
      : super(_value, (v) => _then(v as _$_ScheduleList));

  @override
  _$_ScheduleList get _value => super._value as _$_ScheduleList;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? scheduleList = freezed,
  }) {
    return _then(_$_ScheduleList(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      scheduleList: scheduleList == freezed
          ? _value._scheduleList
          : scheduleList // ignore: cast_nullable_to_non_nullable
              as List<Schedule>,
    ));
  }
}

/// @nodoc

class _$_ScheduleList implements _ScheduleList {
  const _$_ScheduleList(
      {required this.loading,
      required this.error,
      required final List<Schedule> scheduleList})
      : _scheduleList = scheduleList;

  @override
  final bool loading;
  @override
  final bool error;
  final List<Schedule> _scheduleList;
  @override
  List<Schedule> get scheduleList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduleList);
  }

  @override
  String toString() {
    return 'ScheduleList(loading: $loading, error: $error, scheduleList: $scheduleList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleList &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._scheduleList, _scheduleList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_scheduleList));

  @JsonKey(ignore: true)
  @override
  _$$_ScheduleListCopyWith<_$_ScheduleList> get copyWith =>
      __$$_ScheduleListCopyWithImpl<_$_ScheduleList>(this, _$identity);
}

abstract class _ScheduleList implements ScheduleList {
  const factory _ScheduleList(
      {required final bool loading,
      required final bool error,
      required final List<Schedule> scheduleList}) = _$_ScheduleList;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  List<Schedule> get scheduleList;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleListCopyWith<_$_ScheduleList> get copyWith =>
      throw _privateConstructorUsedError;
}
