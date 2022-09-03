// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../schedule_destination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleDestination _$$_ScheduleDestinationFromJson(
        Map<String, dynamic> json) =>
    _$_ScheduleDestination(
      name: json['name'] as String?,
      address: json['address'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ScheduleDestinationToJson(
        _$_ScheduleDestination instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
