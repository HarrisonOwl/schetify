// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../participant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Participant _$$_ParticipantFromJson(Map<String, dynamic> json) =>
    _$_Participant(
      user_id: json['user_id'] as String,
      username: json['username'] as String,
      label: json['label'] as int,
      group_id: json['group_id'] as int,
    );

Map<String, dynamic> _$$_ParticipantToJson(_$_Participant instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'username': instance.username,
      'label': instance.label,
      'group_id': instance.group_id,
    };
