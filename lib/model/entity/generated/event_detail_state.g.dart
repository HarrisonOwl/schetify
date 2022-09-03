// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../event_detail_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventDetailState _$$_EventDetailStateFromJson(Map<String, dynamic> json) =>
    _$_EventDetailState(
      event: Event.fromJson(json['event'] as Map<String, dynamic>),
      scheduleCandidateList: const ScheduleCandidateListConverter().fromJson(
          json['scheduleCandidateList'] as List<Map<String, dynamic>>),
      participantList: const ParticipantListConverter()
          .fromJson(json['participantList'] as List<Map<String, dynamic>>),
    );

Map<String, dynamic> _$$_EventDetailStateToJson(_$_EventDetailState instance) =>
    <String, dynamic>{
      'event': instance.event,
      'scheduleCandidateList': const ScheduleCandidateListConverter()
          .toJson(instance.scheduleCandidateList),
      'participantList':
          const ParticipantListConverter().toJson(instance.participantList),
    };
