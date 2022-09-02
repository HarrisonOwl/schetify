import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/schedule_list.dart';

import '../model/entity/schedule.dart';

final scheduleListProvider = StateNotifierProvider<ScheduleDataNotifier, ScheduleList>((ref){
  return ScheduleDataNotifier();
});

class ScheduleDataNotifier extends StateNotifier<ScheduleList> {
  ScheduleDataNotifier(): super(const ScheduleList(loading: true, error: false, scheduleList: []));

  void changeLoading(bool loading) {
    state = state.copyWith(loading: loading);
  }
  void changeError(bool error) {
    state = state.copyWith(error: error);
  }

  void changeScheduleList(List<Schedule> scheduleList) {
    state = state.copyWith(scheduleList: scheduleList);
  }
}
