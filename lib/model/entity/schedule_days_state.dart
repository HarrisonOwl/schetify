import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schetify/model/entity/schedule_period.dart';
import "package:intl/intl.dart";
import 'dart:collection';
// {ファイル名}.freezed.dart　と書く
part 'generated/schedule_days_state.freezed.dart';
part 'generated/schedule_days_state.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class ScheduleDaysState with _$ScheduleDaysState {
  const ScheduleDaysState._();
  const factory ScheduleDaysState({
    required bool isSetPeriodCollectively,
    @SplayTreeSetConverter() required SplayTreeSet<SchedulePeriod> periodList,
    @TimeOfDayConverter() required TimeOfDay defaultStartTimeOfDay,
    @TimeOfDayConverter() required TimeOfDay defaultEndTimeOfDay,
  }) = _ScheduleDaysState;

  factory ScheduleDaysState.fromJson(Map<String, Object?> json)
  => _$ScheduleDaysStateFromJson(json);
}

class TimeOfDayConverter implements JsonConverter<TimeOfDay, String> {
  const TimeOfDayConverter();

  @override
  TimeOfDay fromJson(String json) {
    return TimeOfDay(
        hour: int.parse(json.split(":")[0]),
        minute: int.parse(json.split(":")[1])
    );
  }

  @override
  String toJson(TimeOfDay object) {
    final f = NumberFormat("00");
    return "${f.format(object.hour)}:${f.format(object.minute)}";
  }
}

class SplayTreeSetConverter implements JsonConverter<SplayTreeSet<SchedulePeriod>, List<Map<String, dynamic>>> {
  const SplayTreeSetConverter();

  @override
  SplayTreeSet<SchedulePeriod> fromJson(List<Map<String, dynamic>> json) {
    final data = json.map((period) => SchedulePeriod.fromJson(period)).toList();
    final SplayTreeSet<SchedulePeriod> ret =
    SplayTreeSet((a, b) => a.getText().compareTo(b.getText()));
    for (var e in data) { ret.add(e); }
    return ret;
  }

  @override
  List<Map<String, dynamic>> toJson(SplayTreeSet<SchedulePeriod> json) {
    final ret = json.map((period) => period.toJson()).toList();
    return ret;
  }
}
