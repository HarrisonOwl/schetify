import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/attend_status.dart';
import 'package:schetify/model/entity/attendance_check_state.dart';

import '../model/repository/test_repository.dart';

class AttendanceCheckNotifier extends StateNotifier<AttendanceCheckState> {
  AttendanceCheckNotifier() : super(const AttendanceCheckState(
      statusList: [],
      loading: true
  ));

  final TestRepository testService = TestRepository();

  void changeStatus(List<AttendStatus> statusList) {
    state = state.copyWith(statusList: statusList);
  }

  Future<void> getStatus(int id) async {
    try{
      await Future.delayed(const Duration(seconds: 1));
      final statusList = await testService.getStatusList(id);
      state = state.copyWith(
          statusList: statusList,
          loading: false
      );
    }catch(e){
      debugPrint(e.toString());
    }
  }

  Future<int> updateStatus() async{
    final status = await testService.updateStatus(state.statusList);
    return status;
  }
}

final attendanceCheckProvider = StateNotifierProvider<AttendanceCheckNotifier
,AttendanceCheckState>((ref) {
  return AttendanceCheckNotifier();
});