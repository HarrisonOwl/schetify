// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../event_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventNotification _$$_EventNotificationFromJson(Map<String, dynamic> json) =>
    _$_EventNotification(
      id: json['id'] as int,
      event_id: json['event_id'] as int,
      event_name: json['event_name'] as String,
      title: json['title'] as String,
      contents: json['contents'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_EventNotificationToJson(
        _$_EventNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.event_id,
      'event_name': instance.event_name,
      'title': instance.title,
      'contents': instance.contents,
      'created_at': instance.created_at.toIso8601String(),
    };
