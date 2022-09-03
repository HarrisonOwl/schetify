import 'package:schetify/model/entity/schedule.dart';

import 'test_weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/schedule_list.freezed.dart';

@freezed
class ScheduleList with _$ScheduleList{
  const factory ScheduleList({
    required bool loading,
    required bool error,
    required List<Schedule> scheduleList,
  }) = _ScheduleList;

}