// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../participants.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Participants _$$_ParticipantsFromJson(Map<String, dynamic> json) =>
    _$_Participants(
      candidates: const ParticipantListConverter()
          .fromJson(json['candidates'] as List<Map<String, dynamic>>),
    );

Map<String, dynamic> _$$_ParticipantsToJson(_$_Participants instance) =>
    <String, dynamic>{
      'candidates':
          const ParticipantListConverter().toJson(instance.candidates),
    };
