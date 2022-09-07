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
      location_longtiude: (json['location_longtiude'] as num?)?.toDouble(),
      group_num: json['group_num'] as int?,
      total_cost: json['total_cost'] as int?,
      questionare_url: json['questionare_url'] as String?,
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
      'location_longtiude': instance.location_longtiude,
      'group_num': instance.group_num,
      'total_cost': instance.total_cost,
      'questionare_url': instance.questionare_url,
    };
