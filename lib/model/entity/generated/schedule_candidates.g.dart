// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../schedule_candidates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleCandidates _$$_ScheduleCandidatesFromJson(
        Map<String, dynamic> json) =>
    _$_ScheduleCandidates(
      candidates: const SplayTreeSetConverter()
          .fromJson(json['candidates'] as List<Map<String, dynamic>>),
    );

Map<String, dynamic> _$$_ScheduleCandidatesToJson(
        _$_ScheduleCandidates instance) =>
    <String, dynamic>{
      'candidates': const SplayTreeSetConverter().toJson(instance.candidates),
    };
