import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/user_label_status.dart';

import '../model/entity/settings_label_status.dart';

class SettingsLabelNotifier extends StateNotifier<SettingsLabelStatus> {
  SettingsLabelNotifier() : super(const SettingsLabelStatus(
      flag: false,
      userList:[UserLabelStatus(name: "test1", label: "readOnly"),
        UserLabelStatus(name: "test2", label: "readOnly")]));

  void changeFlag(bool status) {
    state = state.copyWith(flag: status);
  }

  void changeUserLabel(int index, String? roll){
    final newUserState = state.userList[index].copyWith(label :roll!);
    List<UserLabelStatus> clone = [...state.userList];
    clone[index] = newUserState;
    state = state.copyWith(userList: clone);
  }
}

final settingsLabelProvider = StateNotifierProvider<SettingsLabelNotifier
,SettingsLabelStatus>((ref) {
  return SettingsLabelNotifier();
});