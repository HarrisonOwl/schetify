// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../event_update_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventUpdateState {
  Event get event => throw _privateConstructorUsedError;
  SplayTreeSet<ScheduleCandidate> get scheduleCandidates =>
      throw _privateConstructorUsedError;
  List<Participant> get participants => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventUpdateStateCopyWith<EventUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventUpdateStateCopyWith<$Res> {
  factory $EventUpdateStateCopyWith(
          EventUpdateState value, $Res Function(EventUpdateState) then) =
      _$EventUpdateStateCopyWithImpl<$Res>;
  $Res call(
      {Event event,
      SplayTreeSet<ScheduleCandidate> scheduleCandidates,
      List<Participant> participants,
      bool loading});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class _$EventUpdateStateCopyWithImpl<$Res>
    implements $EventUpdateStateCopyWith<$Res> {
  _$EventUpdateStateCopyWithImpl(this._value, this._then);

  final EventUpdateState _value;
  // ignore: unused_field
  final $Res Function(EventUpdateState) _then;

  @override
  $Res call({
    Object? event = freezed,
    Object? scheduleCandidates = freezed,
    Object? participants = freezed,
    Object? loading = freezed,
  }) {
    return _then(_value.copyWith(
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
      scheduleCandidates: scheduleCandidates == freezed
          ? _value.scheduleCandidates
          : scheduleCandidates // ignore: cast_nullable_to_non_nullable
              as SplayTreeSet<ScheduleCandidate>,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participant>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc
abstract class _$$_EventUpdateStateCopyWith<$Res>
    implements $EventUpdateStateCopyWith<$Res> {
  factory _$$_EventUpdateStateCopyWith(
          _$_EventUpdateState value, $Res Function(_$_EventUpdateState) then) =
      __$$_EventUpdateStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Event event,
      SplayTreeSet<ScheduleCandidate> scheduleCandidates,
      List<Participant> participants,
      bool loading});

  @override
  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$_EventUpdateStateCopyWithImpl<$Res>
    extends _$EventUpdateStateCopyWithImpl<$Res>
    implements _$$_EventUpdateStateCopyWith<$Res> {
  __$$_EventUpdateStateCopyWithImpl(
      _$_EventUpdateState _value, $Res Function(_$_EventUpdateState) _then)
      : super(_value, (v) => _then(v as _$_EventUpdateState));

  @override
  _$_EventUpdateState get _value => super._value as _$_EventUpdateState;

  @override
  $Res call({
    Object? event = freezed,
    Object? scheduleCandidates = freezed,
    Object? participants = freezed,
    Object? loading = freezed,
  }) {
    return _then(_$_EventUpdateState(
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
      scheduleCandidates: scheduleCandidates == freezed
          ? _value.scheduleCandidates
          : scheduleCandidates // ignore: cast_nullable_to_non_nullable
              as SplayTreeSet<ScheduleCandidate>,
      participants: participants == freezed
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participant>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EventUpdateState implements _EventUpdateState {
  const _$_EventUpdateState(
      {required this.event,
      required this.scheduleCandidates,
      required final List<Participant> participants,
      required this.loading})
      : _participants = participants;

  @override
  final Event event;
  @override
  final SplayTreeSet<ScheduleCandidate> scheduleCandidates;
  final List<Participant> _participants;
  @override
  List<Participant> get participants {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  final bool loading;

  @override
  String toString() {
    return 'EventUpdateState(event: $event, scheduleCandidates: $scheduleCandidates, participants: $participants, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventUpdateState &&
            const DeepCollectionEquality().equals(other.event, event) &&
            const DeepCollectionEquality()
                .equals(other.scheduleCandidates, scheduleCandidates) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality().equals(other.loading, loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(event),
      const DeepCollectionEquality().hash(scheduleCandidates),
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(loading));

  @JsonKey(ignore: true)
  @override
  _$$_EventUpdateStateCopyWith<_$_EventUpdateState> get copyWith =>
      __$$_EventUpdateStateCopyWithImpl<_$_EventUpdateState>(this, _$identity);
}

abstract class _EventUpdateState implements EventUpdateState {
  const factory _EventUpdateState(
      {required final Event event,
      required final SplayTreeSet<ScheduleCandidate> scheduleCandidates,
      required final List<Participant> participants,
      required final bool loading}) = _$_EventUpdateState;

  @override
  Event get event;
  @override
  SplayTreeSet<ScheduleCandidate> get scheduleCandidates;
  @override
  List<Participant> get participants;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$_EventUpdateStateCopyWith<_$_EventUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}
