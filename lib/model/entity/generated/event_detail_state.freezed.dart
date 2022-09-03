// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../event_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventDetailState _$EventDetailStateFromJson(Map<String, dynamic> json) {
  return _EventDetailState.fromJson(json);
}

/// @nodoc
mixin _$EventDetailState {
  Event get event => throw _privateConstructorUsedError;
  @ScheduleCandidateListConverter()
  List<ScheduleCandidate> get scheduleCandidateList =>
      throw _privateConstructorUsedError;
  @ParticipantListConverter()
  List<Participant> get participantList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDetailStateCopyWith<EventDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDetailStateCopyWith<$Res> {
  factory $EventDetailStateCopyWith(
          EventDetailState value, $Res Function(EventDetailState) then) =
      _$EventDetailStateCopyWithImpl<$Res>;
  $Res call(
      {Event event,
      @ScheduleCandidateListConverter()
          List<ScheduleCandidate> scheduleCandidateList,
      @ParticipantListConverter()
          List<Participant> participantList});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class _$EventDetailStateCopyWithImpl<$Res>
    implements $EventDetailStateCopyWith<$Res> {
  _$EventDetailStateCopyWithImpl(this._value, this._then);

  final EventDetailState _value;
  // ignore: unused_field
  final $Res Function(EventDetailState) _then;

  @override
  $Res call({
    Object? event = freezed,
    Object? scheduleCandidateList = freezed,
    Object? participantList = freezed,
  }) {
    return _then(_value.copyWith(
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
      scheduleCandidateList: scheduleCandidateList == freezed
          ? _value.scheduleCandidateList
          : scheduleCandidateList // ignore: cast_nullable_to_non_nullable
              as List<ScheduleCandidate>,
      participantList: participantList == freezed
          ? _value.participantList
          : participantList // ignore: cast_nullable_to_non_nullable
              as List<Participant>,
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
abstract class _$$_EventDetailStateCopyWith<$Res>
    implements $EventDetailStateCopyWith<$Res> {
  factory _$$_EventDetailStateCopyWith(
          _$_EventDetailState value, $Res Function(_$_EventDetailState) then) =
      __$$_EventDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Event event,
      @ScheduleCandidateListConverter()
          List<ScheduleCandidate> scheduleCandidateList,
      @ParticipantListConverter()
          List<Participant> participantList});

  @override
  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$_EventDetailStateCopyWithImpl<$Res>
    extends _$EventDetailStateCopyWithImpl<$Res>
    implements _$$_EventDetailStateCopyWith<$Res> {
  __$$_EventDetailStateCopyWithImpl(
      _$_EventDetailState _value, $Res Function(_$_EventDetailState) _then)
      : super(_value, (v) => _then(v as _$_EventDetailState));

  @override
  _$_EventDetailState get _value => super._value as _$_EventDetailState;

  @override
  $Res call({
    Object? event = freezed,
    Object? scheduleCandidateList = freezed,
    Object? participantList = freezed,
  }) {
    return _then(_$_EventDetailState(
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
      scheduleCandidateList: scheduleCandidateList == freezed
          ? _value._scheduleCandidateList
          : scheduleCandidateList // ignore: cast_nullable_to_non_nullable
              as List<ScheduleCandidate>,
      participantList: participantList == freezed
          ? _value._participantList
          : participantList // ignore: cast_nullable_to_non_nullable
              as List<Participant>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventDetailState implements _EventDetailState {
  const _$_EventDetailState(
      {required this.event,
      @ScheduleCandidateListConverter()
          required final List<ScheduleCandidate> scheduleCandidateList,
      @ParticipantListConverter()
          required final List<Participant> participantList})
      : _scheduleCandidateList = scheduleCandidateList,
        _participantList = participantList;

  factory _$_EventDetailState.fromJson(Map<String, dynamic> json) =>
      _$$_EventDetailStateFromJson(json);

  @override
  final Event event;
  final List<ScheduleCandidate> _scheduleCandidateList;
  @override
  @ScheduleCandidateListConverter()
  List<ScheduleCandidate> get scheduleCandidateList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduleCandidateList);
  }

  final List<Participant> _participantList;
  @override
  @ParticipantListConverter()
  List<Participant> get participantList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participantList);
  }

  @override
  String toString() {
    return 'EventDetailState(event: $event, scheduleCandidateList: $scheduleCandidateList, participantList: $participantList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDetailState &&
            const DeepCollectionEquality().equals(other.event, event) &&
            const DeepCollectionEquality()
                .equals(other._scheduleCandidateList, _scheduleCandidateList) &&
            const DeepCollectionEquality()
                .equals(other._participantList, _participantList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(event),
      const DeepCollectionEquality().hash(_scheduleCandidateList),
      const DeepCollectionEquality().hash(_participantList));

  @JsonKey(ignore: true)
  @override
  _$$_EventDetailStateCopyWith<_$_EventDetailState> get copyWith =>
      __$$_EventDetailStateCopyWithImpl<_$_EventDetailState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventDetailStateToJson(
      this,
    );
  }
}

abstract class _EventDetailState implements EventDetailState {
  const factory _EventDetailState(
          {required final Event event,
          @ScheduleCandidateListConverter()
              required final List<ScheduleCandidate> scheduleCandidateList,
          @ParticipantListConverter()
              required final List<Participant> participantList}) =
      _$_EventDetailState;

  factory _EventDetailState.fromJson(Map<String, dynamic> json) =
      _$_EventDetailState.fromJson;

  @override
  Event get event;
  @override
  @ScheduleCandidateListConverter()
  List<ScheduleCandidate> get scheduleCandidateList;
  @override
  @ParticipantListConverter()
  List<Participant> get participantList;
  @override
  @JsonKey(ignore: true)
  _$$_EventDetailStateCopyWith<_$_EventDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
