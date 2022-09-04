// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../schedule_candidates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleCandidates _$ScheduleCandidatesFromJson(Map<String, dynamic> json) {
  return _ScheduleCandidates.fromJson(json);
}

/// @nodoc
mixin _$ScheduleCandidates {
  @SplayTreeSetConverter()
  SplayTreeSet<ScheduleCandidate> get candidates =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleCandidatesCopyWith<ScheduleCandidates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCandidatesCopyWith<$Res> {
  factory $ScheduleCandidatesCopyWith(
          ScheduleCandidates value, $Res Function(ScheduleCandidates) then) =
      _$ScheduleCandidatesCopyWithImpl<$Res>;
  $Res call(
      {@SplayTreeSetConverter() SplayTreeSet<ScheduleCandidate> candidates});
}

/// @nodoc
class _$ScheduleCandidatesCopyWithImpl<$Res>
    implements $ScheduleCandidatesCopyWith<$Res> {
  _$ScheduleCandidatesCopyWithImpl(this._value, this._then);

  final ScheduleCandidates _value;
  // ignore: unused_field
  final $Res Function(ScheduleCandidates) _then;

  @override
  $Res call({
    Object? candidates = freezed,
  }) {
    return _then(_value.copyWith(
      candidates: candidates == freezed
          ? _value.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as SplayTreeSet<ScheduleCandidate>,
    ));
  }
}

/// @nodoc
abstract class _$$_ScheduleCandidatesCopyWith<$Res>
    implements $ScheduleCandidatesCopyWith<$Res> {
  factory _$$_ScheduleCandidatesCopyWith(_$_ScheduleCandidates value,
          $Res Function(_$_ScheduleCandidates) then) =
      __$$_ScheduleCandidatesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@SplayTreeSetConverter() SplayTreeSet<ScheduleCandidate> candidates});
}

/// @nodoc
class __$$_ScheduleCandidatesCopyWithImpl<$Res>
    extends _$ScheduleCandidatesCopyWithImpl<$Res>
    implements _$$_ScheduleCandidatesCopyWith<$Res> {
  __$$_ScheduleCandidatesCopyWithImpl(
      _$_ScheduleCandidates _value, $Res Function(_$_ScheduleCandidates) _then)
      : super(_value, (v) => _then(v as _$_ScheduleCandidates));

  @override
  _$_ScheduleCandidates get _value => super._value as _$_ScheduleCandidates;

  @override
  $Res call({
    Object? candidates = freezed,
  }) {
    return _then(_$_ScheduleCandidates(
      candidates: candidates == freezed
          ? _value.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as SplayTreeSet<ScheduleCandidate>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleCandidates extends _ScheduleCandidates {
  const _$_ScheduleCandidates(
      {@SplayTreeSetConverter() required this.candidates})
      : super._();

  factory _$_ScheduleCandidates.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleCandidatesFromJson(json);

  @override
  @SplayTreeSetConverter()
  final SplayTreeSet<ScheduleCandidate> candidates;

  @override
  String toString() {
    return 'ScheduleCandidates(candidates: $candidates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleCandidates &&
            const DeepCollectionEquality()
                .equals(other.candidates, candidates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(candidates));

  @JsonKey(ignore: true)
  @override
  _$$_ScheduleCandidatesCopyWith<_$_ScheduleCandidates> get copyWith =>
      __$$_ScheduleCandidatesCopyWithImpl<_$_ScheduleCandidates>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleCandidatesToJson(
      this,
    );
  }
}

abstract class _ScheduleCandidates extends ScheduleCandidates {
  const factory _ScheduleCandidates(
          {@SplayTreeSetConverter()
              required final SplayTreeSet<ScheduleCandidate> candidates}) =
      _$_ScheduleCandidates;
  const _ScheduleCandidates._() : super._();

  factory _ScheduleCandidates.fromJson(Map<String, dynamic> json) =
      _$_ScheduleCandidates.fromJson;

  @override
  @SplayTreeSetConverter()
  SplayTreeSet<ScheduleCandidate> get candidates;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleCandidatesCopyWith<_$_ScheduleCandidates> get copyWith =>
      throw _privateConstructorUsedError;
}
