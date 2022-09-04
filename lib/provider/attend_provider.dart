import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/entity/attend_status.dart';


class AttendNotifier extends StateNotifier<AttendStatus> {
  AttendNotifier() : super(const AttendStatus(attend: false));

  changeAttend(bool flag){
    state = state.copyWith(attend: flag);
  }
}

final attendProvider = StateNotifierProvider<AttendNotifier
,AttendStatus>((ref) {
  return AttendNotifier();
});