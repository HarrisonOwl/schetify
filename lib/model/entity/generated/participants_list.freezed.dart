// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../participants_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParticipantsList {
  int get groupId => throw _privateConstructorUsedError;
  List<Participant> get participants => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParticipantsListCopyWith<ParticipantsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantsListCopyWith<$Res> {
  factory $ParticipantsListCopyWith(
          ParticipantsList value, $Res Function(ParticipantsList) then) =
      _$ParticipantsListCopyWithImpl<$Res>;
  $Res call({int groupId, List<Participant> participants});
}

/// @nodoc
class _$ParticipantsListCopyWithImpl<$Res>
    implements $ParticipantsListCopyWith<$Res> {
  _$ParticipantsListCopyWithImpl(this._value, this._then);

  final ParticipantsList _value;
  // ignore: unused_field
  final $Res Function(ParticipantsList) _then;

  @override
  $Res call({
    Object? groupId = freezed,
    Object? participants = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participant>,
    ));
  }
}

/// @nodoc
abstract class _$$_ParticipantsListCopyWith<$Res>
    implements $ParticipantsListCopyWith<$Res> {
  factory _$$_ParticipantsListCopyWith(
          _$_ParticipantsList value, $Res Function(_$_ParticipantsList) then) =
      __$$_ParticipantsListCopyWithImpl<$Res>;
  @override
  $Res call({int groupId, List<Participant> participants});
}

/// @nodoc
class __$$_ParticipantsListCopyWithImpl<$Res>
    extends _$ParticipantsListCopyWithImpl<$Res>
    implements _$$_ParticipantsListCopyWith<$Res> {
  __$$_ParticipantsListCopyWithImpl(
      _$_ParticipantsList _value, $Res Function(_$_ParticipantsList) _then)
      : super(_value, (v) => _then(v as _$_ParticipantsList));

  @override
  _$_ParticipantsList get _value => super._value as _$_ParticipantsList;

  @override
  $Res call({
    Object? groupId = freezed,
    Object? participants = freezed,
  }) {
    return _then(_$_ParticipantsList(
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      participants: participants == freezed
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participant>,
    ));
  }
}

/// @nodoc

class _$_ParticipantsList implements _ParticipantsList {
  const _$_ParticipantsList(
      {required this.groupId, required final List<Participant> participants})
      : _participants = participants;

  @override
  final int groupId;
  final List<Participant> _participants;
  @override
  List<Participant> get participants {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  String toString() {
    return 'ParticipantsList(groupId: $groupId, participants: $participants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParticipantsList &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groupId),
      const DeepCollectionEquality().hash(_participants));

  @JsonKey(ignore: true)
  @override
  _$$_ParticipantsListCopyWith<_$_ParticipantsList> get copyWith =>
      __$$_ParticipantsListCopyWithImpl<_$_ParticipantsList>(this, _$identity);
}

abstract class _ParticipantsList implements ParticipantsList {
  const factory _ParticipantsList(
      {required final int groupId,
      required final List<Participant> participants}) = _$_ParticipantsList;

  @override
  int get groupId;
  @override
  List<Participant> get participants;
  @override
  @JsonKey(ignore: true)
  _$$_ParticipantsListCopyWith<_$_ParticipantsList> get copyWith =>
      throw _privateConstructorUsedError;
}
