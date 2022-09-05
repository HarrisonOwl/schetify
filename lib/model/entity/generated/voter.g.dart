// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../voter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Voter _$$_VoterFromJson(Map<String, dynamic> json) => _$_Voter(
      user_id: json['user_id'] as int,
      username: json['username'] as String,
      status: json['status'] as int,
    );

Map<String, dynamic> _$$_VoterToJson(_$_Voter instance) => <String, dynamic>{
      'user_id': instance.user_id,
      'username': instance.username,
      'status': instance.status,
    };
