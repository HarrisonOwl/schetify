import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/schedule_days_state.dart';
import 'package:schetify/model/entity/schedule_period.dart';

class ScheduleDayNotifier extends StateNotifier<ScheduleDaysState> {
  ScheduleDayNotifier() : super(const ScheduleDaysState(
      isSetPeriodCollectively: false,
      periodList: [],
      defaultStartTimeOfDay: TimeOfDay(hour: 19, minute: 0),
      defaultEndTimeOfDay: TimeOfDay(hour: 20, minute: 0),
  ));

  void changeIsSetPeriodCollectively(bool status) {
    state = state.copyWith(isSetPeriodCollectively: status);
  }

  void changeDayList(List<SchedulePeriod> periodList) {
    state = state.copyWith(periodList: periodList);
  }

  void changeDefaultStartTimeOfDate(TimeOfDay tod) {
    state = state.copyWith(defaultStartTimeOfDay: tod);
  }

  void changeDefaultEndTimeOfDate(TimeOfDay tod) {
    state = state.copyWith(defaultEndTimeOfDay: tod);
  }
}

final scheduleDayProvider = StateNotifierProvider<ScheduleDayNotifier
,ScheduleDaysState>((ref) {
  return ScheduleDayNotifier();
});