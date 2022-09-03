import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/attendance_check_state.dart';

class AttendanceCheckNotifier extends StateNotifier<AttendanceCheckState> {
  AttendanceCheckNotifier() : super(const AttendanceCheckState(statusList: []));
}

final scheduleDayProvider = StateNotifierProvider<AttendanceCheckNotifier
,AttendanceCheckState>((ref) {
  return AttendanceCheckNotifier();
});