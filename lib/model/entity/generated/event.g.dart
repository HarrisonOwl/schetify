// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Event _$$_EventFromJson(Map<String, dynamic> json) => _$_Event(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      start_at: json['start_at'] == null
          ? null
          : DateTime.parse(json['start_at'] as String),
      end_at: json['end_at'] == null
          ? null
          : DateTime.parse(json['end_at'] as String),
      img_url: json['img_url'] as String?,
      location_name: json['location_name'] as String?,
      location_address: json['location_address'] as String?,
      location_latitude: (json['location_latitude'] as num?)?.toDouble(),
      location_longitude: (json['location_longitude'] as num?)?.toDouble(),
      group_num: json['group_num'] as int?,
      cost_type: json['cost_type'] as String?,
      cost: json['cost'] as int?,
      questionnaire_url: json['questionnaire_url'] as String?,
    );

Map<String, dynamic> _$$_EventToJson(_$_Event instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'start_at': instance.start_at?.toIso8601String(),
      'end_at': instance.end_at?.toIso8601String(),
      'img_url': instance.img_url,
      'location_name': instance.location_name,
      'location_address': instance.location_address,
      'location_latitude': instance.location_latitude,
      'location_longitude': instance.location_longitude,
      'group_num': instance.group_num,
      'cost_type': instance.cost_type,
      'cost': instance.cost,
      'questionnaire_url': instance.questionnaire_url,
    };
