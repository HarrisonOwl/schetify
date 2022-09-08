// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../schedule_candidate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleCandidate _$$_ScheduleCandidateFromJson(Map<String, dynamic> json) =>
    _$_ScheduleCandidate(
      id: json['id'] as int?,
      event_id: json['event_id'] as int?,
      start_at: DateTime.parse(json['start_at'] as String),
      end_at: DateTime.parse(json['end_at'] as String),
      voters: const VoterListConverter().fromJson(json['voters'] as List),
    );

Map<String, dynamic> _$$_ScheduleCandidateToJson(
        _$_ScheduleCandidate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.event_id,
      'start_at': instance.start_at.toIso8601String(),
      'end_at': instance.end_at.toIso8601String(),
      'voters': const VoterListConverter().toJson(instance.voters),
    };
