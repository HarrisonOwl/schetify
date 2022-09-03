import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/entity/settings_label_status.dart';
import '../model/entity/user_label_status.dart';

class UserLabelNotifier extends StateNotifier<UserLabelStatus> {
  UserLabelNotifier() : super(const UserLabelStatus(
      name: "", label: ""));

  void changeLabel(String roll) {
    state = state.copyWith(label: roll);
  }
}

final userLabelProvider = StateNotifierProvider<UserLabelNotifier
,UserLabelStatus>((ref) {
  return UserLabelNotifier();
});