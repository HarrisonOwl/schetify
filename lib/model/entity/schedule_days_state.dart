import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schetify/model/entity/schedule_period.dart';
// {ファイル名}.freezed.dart　と書く
part 'schedule_days_state.freezed.dart';
part 'schedule_days_state.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class ScheduleDaysState with _$ScheduleDaysState {
  const ScheduleDaysState._();
  const factory ScheduleDaysState({
    required bool isSetPeriodCollectively,
    required List<SchedulePeriod> periodList,
    @TimeOfDayConverter() required TimeOfDay? defaultStartTimeOfDay,
    @TimeOfDayConverter() required TimeOfDay? defaultEndTimeOfDay,
  }) = _ScheduleDaysState;

  factory ScheduleDaysState.fromJson(Map<String, Object?> json)
  => _$ScheduleDaysStateFromJson(json);
}

class TimeOfDayConverter implements JsonConverter<TimeOfDay?, String?> {
  const TimeOfDayConverter();

  @override
  TimeOfDay? fromJson(String? json) {
    return json == null ? TimeOfDay(
        hour: int.parse(json!.split(":")[0]),
        minute: int.parse(json.split(":")[1])
    ) : const TimeOfDay(
        hour: 0,
        minute: 0
    );
  }

  @override
  String? toJson(TimeOfDay? object) {
    return object == null ? "${object?.hour}:${object?.minute}" : '0:0';
  }
}