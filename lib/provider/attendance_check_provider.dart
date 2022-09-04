import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/attend_status.dart';
import 'package:schetify/model/entity/attendance_check_state.dart';

class AttendanceCheckNotifier extends StateNotifier<AttendanceCheckState> {
  AttendanceCheckNotifier() : super(const AttendanceCheckState(
      statusList: [
        AttendStatus(
            schedule_candidate_id: 1,
            status: 0
        ),
        AttendStatus(
            schedule_candidate_id: 2,
            status: 1
        ),
        AttendStatus(
            schedule_candidate_id: 4,
            status: 2
        ),
        AttendStatus(
            schedule_candidate_id: 5,
            status: 2
        ),
      ]
  ));

  void changeStatus(List<AttendStatus> statusList) {
    state = state.copyWith(statusList: statusList);
  }
}

final attendanceCheckProvider = StateNotifierProvider<AttendanceCheckNotifier
,AttendanceCheckState>((ref) {
  return AttendanceCheckNotifier();
});