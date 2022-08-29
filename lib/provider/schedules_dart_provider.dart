import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/test_weather.dart';
import 'package:schetify/model/repository/test_repository.dart';

import '../model/entity/schedules_state.dart';

final schedulesDataProvider = StateNotifierProvider<ScheduleDataNotifier, SchedulesState>((ref){
  return ScheduleDataNotifier();
});

class ScheduleDataNotifier extends StateNotifier<SchedulesState> {
  ScheduleDataNotifier(): super(const SchedulesState(loading: true, error: false, schedules: [])) {
    getSchedules();
  }

  final TestRepository testService = TestRepository();

  Future<void> getSchedules() async {
    try{
      final schedules = await testService.GetTestWeathers();
      state = SchedulesState(loading: false, error: false, schedules: schedules);
    }catch(e){
      state = state.copyWith(loading: false, error: true);
      debugPrint(e.toString());
    }
  }


}
