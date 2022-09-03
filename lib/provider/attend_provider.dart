import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/entity/attend_status.dart';


class AttendNotifier extends StateNotifier<AttendStatus> {
  AttendNotifier() : super(const AttendStatus(
      attend: 'NO'));

  changeAttend(String attend){
    state = state.copyWith(attend: attend);
  }
}

final attendProvider = StateNotifierProvider<AttendNotifier
,AttendStatus>((ref) {
  return AttendNotifier();
});