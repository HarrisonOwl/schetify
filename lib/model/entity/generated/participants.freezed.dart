// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../participants.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Participants _$ParticipantsFromJson(Map<String, dynamic> json) {
  return _Participants.fromJson(json);
}

/// @nodoc
mixin _$Participants {
  @ParticipantListConverter()
  List<Participant> get candidates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticipantsCopyWith<Participants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantsCopyWith<$Res> {
  factory $ParticipantsCopyWith(
          Participants value, $Res Function(Participants) then) =
      _$ParticipantsCopyWithImpl<$Res>;
  $Res call({@ParticipantListConverter() List<Participant> candidates});
}

/// @nodoc
class _$ParticipantsCopyWithImpl<$Res> implements $ParticipantsCopyWith<$Res> {
  _$ParticipantsCopyWithImpl(this._value, this._then);

  final Participants _value;
  // ignore: unused_field
  final $Res Function(Participants) _then;

  @override
  $Res call({
    Object? candidates = freezed,
  }) {
    return _then(_value.copyWith(
      candidates: candidates == freezed
          ? _value.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<Participant>,
    ));
  }
}

/// @nodoc
abstract class _$$_ParticipantsCopyWith<$Res>
    implements $ParticipantsCopyWith<$Res> {
  factory _$$_ParticipantsCopyWith(
          _$_Participants value, $Res Function(_$_Participants) then) =
      __$$_ParticipantsCopyWithImpl<$Res>;
  @override
  $Res call({@ParticipantListConverter() List<Participant> candidates});
}

/// @nodoc
class __$$_ParticipantsCopyWithImpl<$Res>
    extends _$ParticipantsCopyWithImpl<$Res>
    implements _$$_ParticipantsCopyWith<$Res> {
  __$$_ParticipantsCopyWithImpl(
      _$_Participants _value, $Res Function(_$_Participants) _then)
      : super(_value, (v) => _then(v as _$_Participants));

  @override
  _$_Participants get _value => super._value as _$_Participants;

  @override
  $Res call({
    Object? candidates = freezed,
  }) {
    return _then(_$_Participants(
      candidates: candidates == freezed
          ? _value._candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<Participant>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Participants implements _Participants {
  const _$_Participants(
      {@ParticipantListConverter() required final List<Participant> candidates})
      : _candidates = candidates;

  factory _$_Participants.fromJson(Map<String, dynamic> json) =>
      _$$_ParticipantsFromJson(json);

  final List<Participant> _candidates;
  @override
  @ParticipantListConverter()
  List<Participant> get candidates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_candidates);
  }

  @override
  String toString() {
    return 'Participants(candidates: $candidates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Participants &&
            const DeepCollectionEquality()
                .equals(other._candidates, _candidates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_candidates));

  @JsonKey(ignore: true)
  @override
  _$$_ParticipantsCopyWith<_$_Participants> get copyWith =>
      __$$_ParticipantsCopyWithImpl<_$_Participants>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParticipantsToJson(
      this,
    );
  }
}

abstract class _Participants implements Participants {
  const factory _Participants(
      {@ParticipantListConverter()
          required final List<Participant> candidates}) = _$_Participants;

  factory _Participants.fromJson(Map<String, dynamic> json) =
      _$_Participants.fromJson;

  @override
  @ParticipantListConverter()
  List<Participant> get candidates;
  @override
  @JsonKey(ignore: true)
  _$$_ParticipantsCopyWith<_$_Participants> get copyWith =>
      throw _privateConstructorUsedError;
}
