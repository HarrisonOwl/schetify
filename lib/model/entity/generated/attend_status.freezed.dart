// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../attend_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendStatus _$AttendStatusFromJson(Map<String, dynamic> json) {
  return _AttendStatus.fromJson(json);
}

/// @nodoc
mixin _$AttendStatus {
  int get schedule_candidate_id => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendStatusCopyWith<AttendStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendStatusCopyWith<$Res> {
  factory $AttendStatusCopyWith(
          AttendStatus value, $Res Function(AttendStatus) then) =
      _$AttendStatusCopyWithImpl<$Res>;
  $Res call({int schedule_candidate_id, int status});
}

/// @nodoc
class _$AttendStatusCopyWithImpl<$Res> implements $AttendStatusCopyWith<$Res> {
  _$AttendStatusCopyWithImpl(this._value, this._then);

  final AttendStatus _value;
  // ignore: unused_field
  final $Res Function(AttendStatus) _then;

  @override
  $Res call({
    Object? schedule_candidate_id = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      schedule_candidate_id: schedule_candidate_id == freezed
          ? _value.schedule_candidate_id
          : schedule_candidate_id // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_AttendStatusCopyWith<$Res>
    implements $AttendStatusCopyWith<$Res> {
  factory _$$_AttendStatusCopyWith(
          _$_AttendStatus value, $Res Function(_$_AttendStatus) then) =
      __$$_AttendStatusCopyWithImpl<$Res>;
  @override
  $Res call({int schedule_candidate_id, int status});
}

/// @nodoc
class __$$_AttendStatusCopyWithImpl<$Res>
    extends _$AttendStatusCopyWithImpl<$Res>
    implements _$$_AttendStatusCopyWith<$Res> {
  __$$_AttendStatusCopyWithImpl(
      _$_AttendStatus _value, $Res Function(_$_AttendStatus) _then)
      : super(_value, (v) => _then(v as _$_AttendStatus));

  @override
  _$_AttendStatus get _value => super._value as _$_AttendStatus;

  @override
  $Res call({
    Object? schedule_candidate_id = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_AttendStatus(
      schedule_candidate_id: schedule_candidate_id == freezed
          ? _value.schedule_candidate_id
          : schedule_candidate_id // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendStatus extends _AttendStatus {
  const _$_AttendStatus(
      {required this.schedule_candidate_id, required this.status})
      : super._();

  factory _$_AttendStatus.fromJson(Map<String, dynamic> json) =>
      _$$_AttendStatusFromJson(json);

  @override
  final int schedule_candidate_id;
  @override
  final int status;

  @override
  String toString() {
    return 'AttendStatus(schedule_candidate_id: $schedule_candidate_id, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendStatus &&
            const DeepCollectionEquality()
                .equals(other.schedule_candidate_id, schedule_candidate_id) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(schedule_candidate_id),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_AttendStatusCopyWith<_$_AttendStatus> get copyWith =>
      __$$_AttendStatusCopyWithImpl<_$_AttendStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendStatusToJson(
      this,
    );
  }
}

abstract class _AttendStatus extends AttendStatus {
  const factory _AttendStatus(
      {required final int schedule_candidate_id,
      required final int status}) = _$_AttendStatus;
  const _AttendStatus._() : super._();

  factory _AttendStatus.fromJson(Map<String, dynamic> json) =
      _$_AttendStatus.fromJson;

  @override
  int get schedule_candidate_id;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_AttendStatusCopyWith<_$_AttendStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
