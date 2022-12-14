import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/attend_status.dart';
import 'package:schetify/model/entity/attendance_check_state.dart';

import '../model/repository/event_repository.dart';

class AttendanceCheckNotifier extends StateNotifier<AttendanceCheckState> {
  AttendanceCheckNotifier() : super(const AttendanceCheckState(
      statusList: [],
      loading: true
  ));

  final EventRepository eventService = EventRepository();

  void changeStatus(List<AttendStatus> statusList) {
    state = state.copyWith(statusList: statusList);
  }

  Future<void> getStatus(int id) async {
    try{
      final statusList = await eventService.getStatusList(id);
      state = state.copyWith(
          statusList: statusList,
          loading: false
      );
    }catch(e){
      debugPrint(e.toString());
    }
  }

  Future<void> updateStatus(int id) async{
    eventService.updateStatus(id, state.statusList);
  }
}

final attendanceCheckProvider = StateNotifierProvider<AttendanceCheckNotifier
,AttendanceCheckState>((ref) {
  return AttendanceCheckNotifier();
});