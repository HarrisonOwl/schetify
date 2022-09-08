// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../attendance_check_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendanceCheckState _$AttendanceCheckStateFromJson(Map<String, dynamic> json) {
  return _AttendanceCheckState.fromJson(json);
}

/// @nodoc
mixin _$AttendanceCheckState {
  @AttendStatusListConverter()
  List<AttendStatus> get statusList => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceCheckStateCopyWith<AttendanceCheckState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceCheckStateCopyWith<$Res> {
  factory $AttendanceCheckStateCopyWith(AttendanceCheckState value,
          $Res Function(AttendanceCheckState) then) =
      _$AttendanceCheckStateCopyWithImpl<$Res>;
  $Res call(
      {@AttendStatusListConverter() List<AttendStatus> statusList,
      bool loading});
}

/// @nodoc
class _$AttendanceCheckStateCopyWithImpl<$Res>
    implements $AttendanceCheckStateCopyWith<$Res> {
  _$AttendanceCheckStateCopyWithImpl(this._value, this._then);

  final AttendanceCheckState _value;
  // ignore: unused_field
  final $Res Function(AttendanceCheckState) _then;

  @override
  $Res call({
    Object? statusList = freezed,
    Object? loading = freezed,
  }) {
    return _then(_value.copyWith(
      statusList: statusList == freezed
          ? _value.statusList
          : statusList // ignore: cast_nullable_to_non_nullable
              as List<AttendStatus>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AttendanceCheckStateCopyWith<$Res>
    implements $AttendanceCheckStateCopyWith<$Res> {
  factory _$$_AttendanceCheckStateCopyWith(_$_AttendanceCheckState value,
          $Res Function(_$_AttendanceCheckState) then) =
      __$$_AttendanceCheckStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@AttendStatusListConverter() List<AttendStatus> statusList,
      bool loading});
}

/// @nodoc
class __$$_AttendanceCheckStateCopyWithImpl<$Res>
    extends _$AttendanceCheckStateCopyWithImpl<$Res>
    implements _$$_AttendanceCheckStateCopyWith<$Res> {
  __$$_AttendanceCheckStateCopyWithImpl(_$_AttendanceCheckState _value,
      $Res Function(_$_AttendanceCheckState) _then)
      : super(_value, (v) => _then(v as _$_AttendanceCheckState));

  @override
  _$_AttendanceCheckState get _value => super._value as _$_AttendanceCheckState;

  @override
  $Res call({
    Object? statusList = freezed,
    Object? loading = freezed,
  }) {
    return _then(_$_AttendanceCheckState(
      statusList: statusList == freezed
          ? _value._statusList
          : statusList // ignore: cast_nullable_to_non_nullable
              as List<AttendStatus>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceCheckState implements _AttendanceCheckState {
  const _$_AttendanceCheckState(
      {@AttendStatusListConverter()
          required final List<AttendStatus> statusList,
      required this.loading})
      : _statusList = statusList;

  factory _$_AttendanceCheckState.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceCheckStateFromJson(json);

  final List<AttendStatus> _statusList;
  @override
  @AttendStatusListConverter()
  List<AttendStatus> get statusList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statusList);
  }

  @override
  final bool loading;

  @override
  String toString() {
    return 'AttendanceCheckState(statusList: $statusList, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceCheckState &&
            const DeepCollectionEquality()
                .equals(other._statusList, _statusList) &&
            const DeepCollectionEquality().equals(other.loading, loading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_statusList),
      const DeepCollectionEquality().hash(loading));

  @JsonKey(ignore: true)
  @override
  _$$_AttendanceCheckStateCopyWith<_$_AttendanceCheckState> get copyWith =>
      __$$_AttendanceCheckStateCopyWithImpl<_$_AttendanceCheckState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceCheckStateToJson(
      this,
    );
  }
}

abstract class _AttendanceCheckState implements AttendanceCheckState {
  const factory _AttendanceCheckState(
      {@AttendStatusListConverter()
          required final List<AttendStatus> statusList,
      required final bool loading}) = _$_AttendanceCheckState;

  factory _AttendanceCheckState.fromJson(Map<String, dynamic> json) =
      _$_AttendanceCheckState.fromJson;

  @override
  @AttendStatusListConverter()
  List<AttendStatus> get statusList;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceCheckStateCopyWith<_$_AttendanceCheckState> get copyWith =>
      throw _privateConstructorUsedError;
}
