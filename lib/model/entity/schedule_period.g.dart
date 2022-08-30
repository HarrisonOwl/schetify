// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SchedulePeriod _$$_SchedulePeriodFromJson(Map<String, dynamic> json) =>
    _$_SchedulePeriod(
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
    );

Map<String, dynamic> _$$_SchedulePeriodToJson(_$_SchedulePeriod instance) =>
    <String, dynamic>{
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
    };
