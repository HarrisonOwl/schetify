// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../attendance_check_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendanceCheckState _$$_AttendanceCheckStateFromJson(
        Map<String, dynamic> json) =>
    _$_AttendanceCheckState(
      statusList: const AttendStatusListConverter()
          .fromJson(json['statusList'] as List<Map<String, dynamic>>),
    );

Map<String, dynamic> _$$_AttendanceCheckStateToJson(
        _$_AttendanceCheckState instance) =>
    <String, dynamic>{
      'statusList':
          const AttendStatusListConverter().toJson(instance.statusList),
    };
