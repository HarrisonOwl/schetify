import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/schedule_days_state.dart';
import 'package:schetify/model/entity/schedule_period.dart';

class ScheduleDayNotifier extends StateNotifier<ScheduleDaysState> {
  ScheduleDayNotifier() : super(ScheduleDaysState(
      isSetPeriodCollectively: true,
      periodList: SplayTreeSet<SchedulePeriod>((a, b) => a.getText().compareTo(b.getText())),
      defaultStartTimeOfDay: const TimeOfDay(hour: 19, minute: 0),
      defaultEndTimeOfDay: const TimeOfDay(hour: 20, minute: 0),
  ));

  void changeIsSetPeriodCollectively(bool status) {
    state = state.copyWith(isSetPeriodCollectively: status);
  }
  void addPeriod(SchedulePeriod period) {
    state.periodList.add(period);
    state = state.copyWith(periodList: state.periodList);
  }

  void removePeriod(SchedulePeriod period) {
    state.periodList.remove(period);
    state = state.copyWith(periodList: state.periodList);
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