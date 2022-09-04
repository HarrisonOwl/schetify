// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../participants.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Participants _$$_ParticipantsFromJson(Map<String, dynamic> json) =>
    _$_Participants(
      participants: const ParticipantListConverter()
          .fromJson(json['participants'] as List<Map<String, dynamic>>),
    );

Map<String, dynamic> _$$_ParticipantsToJson(_$_Participants instance) =>
    <String, dynamic>{
      'participants':
          const ParticipantListConverter().toJson(instance.participants),
    };
