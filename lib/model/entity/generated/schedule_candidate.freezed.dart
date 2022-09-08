// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../schedule_candidate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleCandidate _$ScheduleCandidateFromJson(Map<String, dynamic> json) {
  return _ScheduleCandidate.fromJson(json);
}

/// @nodoc
mixin _$ScheduleCandidate {
  int? get id => throw _privateConstructorUsedError;
  int? get event_id => throw _privateConstructorUsedError;
  DateTime get start_at => throw _privateConstructorUsedError;
  DateTime get end_at => throw _privateConstructorUsedError;
  @VoterListConverter()
  List<Voter> get voters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleCandidateCopyWith<ScheduleCandidate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCandidateCopyWith<$Res> {
  factory $ScheduleCandidateCopyWith(
          ScheduleCandidate value, $Res Function(ScheduleCandidate) then) =
      _$ScheduleCandidateCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? event_id,
      DateTime start_at,
      DateTime end_at,
      @VoterListConverter() List<Voter> voters});
}

/// @nodoc
class _$ScheduleCandidateCopyWithImpl<$Res>
    implements $ScheduleCandidateCopyWith<$Res> {
  _$ScheduleCandidateCopyWithImpl(this._value, this._then);

  final ScheduleCandidate _value;
  // ignore: unused_field
  final $Res Function(ScheduleCandidate) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? event_id = freezed,
    Object? start_at = freezed,
    Object? end_at = freezed,
    Object? voters = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      event_id: event_id == freezed
          ? _value.event_id
          : event_id // ignore: cast_nullable_to_non_nullable
              as int?,
      start_at: start_at == freezed
          ? _value.start_at
          : start_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end_at: end_at == freezed
          ? _value.end_at
          : end_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      voters: voters == freezed
          ? _value.voters
          : voters // ignore: cast_nullable_to_non_nullable
              as List<Voter>,
    ));
  }
}

/// @nodoc
abstract class _$$_ScheduleCandidateCopyWith<$Res>
    implements $ScheduleCandidateCopyWith<$Res> {
  factory _$$_ScheduleCandidateCopyWith(_$_ScheduleCandidate value,
          $Res Function(_$_ScheduleCandidate) then) =
      __$$_ScheduleCandidateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? event_id,
      DateTime start_at,
      DateTime end_at,
      @VoterListConverter() List<Voter> voters});
}

/// @nodoc
class __$$_ScheduleCandidateCopyWithImpl<$Res>
    extends _$ScheduleCandidateCopyWithImpl<$Res>
    implements _$$_ScheduleCandidateCopyWith<$Res> {
  __$$_ScheduleCandidateCopyWithImpl(
      _$_ScheduleCandidate _value, $Res Function(_$_ScheduleCandidate) _then)
      : super(_value, (v) => _then(v as _$_ScheduleCandidate));

  @override
  _$_ScheduleCandidate get _value => super._value as _$_ScheduleCandidate;

  @override
  $Res call({
    Object? id = freezed,
    Object? event_id = freezed,
    Object? start_at = freezed,
    Object? end_at = freezed,
    Object? voters = freezed,
  }) {
    return _then(_$_ScheduleCandidate(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      event_id: event_id == freezed
          ? _value.event_id
          : event_id // ignore: cast_nullable_to_non_nullable
              as int?,
      start_at: start_at == freezed
          ? _value.start_at
          : start_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end_at: end_at == freezed
          ? _value.end_at
          : end_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      voters: voters == freezed
          ? _value._voters
          : voters // ignore: cast_nullable_to_non_nullable
              as List<Voter>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleCandidate extends _ScheduleCandidate {
  const _$_ScheduleCandidate(
      {required this.id,
      required this.event_id,
      required this.start_at,
      required this.end_at,
      @VoterListConverter() required final List<Voter> voters})
      : _voters = voters,
        super._();

  factory _$_ScheduleCandidate.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleCandidateFromJson(json);

  @override
  final int? id;
  @override
  final int? event_id;
  @override
  final DateTime start_at;
  @override
  final DateTime end_at;
  final List<Voter> _voters;
  @override
  @VoterListConverter()
  List<Voter> get voters {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_voters);
  }

  @override
  String toString() {
    return 'ScheduleCandidate(id: $id, event_id: $event_id, start_at: $start_at, end_at: $end_at, voters: $voters)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_ScheduleCandidateCopyWith<_$_ScheduleCandidate> get copyWith =>
      __$$_ScheduleCandidateCopyWithImpl<_$_ScheduleCandidate>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleCandidateToJson(
      this,
    );
  }
}

abstract class _ScheduleCandidate extends ScheduleCandidate {
  const factory _ScheduleCandidate(
          {required final int? id,
          required final int? event_id,
          required final DateTime start_at,
          required final DateTime end_at,
          @VoterListConverter() required final List<Voter> voters}) =
      _$_ScheduleCandidate;
  const _ScheduleCandidate._() : super._();

  factory _ScheduleCandidate.fromJson(Map<String, dynamic> json) =
      _$_ScheduleCandidate.fromJson;

  @override
  int? get id;
  @override
  int? get event_id;
  @override
  DateTime get start_at;
  @override
  DateTime get end_at;
  @override
  @VoterListConverter()
  List<Voter> get voters;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleCandidateCopyWith<_$_ScheduleCandidate> get copyWith =>
      throw _privateConstructorUsedError;
}
