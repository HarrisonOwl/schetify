// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../attend_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendStatus _$$_AttendStatusFromJson(Map<String, dynamic> json) =>
    _$_AttendStatus(
      schedule_candidate_id: json['schedule_candidate_id'] as int,
      start_at: DateTime.parse(json['start_at'] as String),
      end_at: DateTime.parse(json['end_at'] as String),
      status: json['status'] as int,
    );

Map<String, dynamic> _$$_AttendStatusToJson(_$_AttendStatus instance) =>
    <String, dynamic>{
      'schedule_candidate_id': instance.schedule_candidate_id,
      'start_at': instance.start_at.toIso8601String(),
      'end_at': instance.end_at.toIso8601String(),
      'status': instance.status,
    };
