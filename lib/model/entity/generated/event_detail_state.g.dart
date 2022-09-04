// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../event_detail_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventDetailState _$$_EventDetailStateFromJson(Map<String, dynamic> json) =>
    _$_EventDetailState(
      event: Event.fromJson(json['event'] as Map<String, dynamic>),
      scheduleCandidates: ScheduleCandidates.fromJson(
          json['scheduleCandidates'] as Map<String, dynamic>),
      participants:
          Participants.fromJson(json['participants'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EventDetailStateToJson(_$_EventDetailState instance) =>
    <String, dynamic>{
      'event': instance.event,
      'scheduleCandidates': instance.scheduleCandidates,
      'participants': instance.participants,
    };
