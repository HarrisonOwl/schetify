import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/user_label_status.dart';

import '../model/entity/settings_label_status.dart';

class SettingsLabelNotifier extends StateNotifier<SettingsLabelStatus> {
  SettingsLabelNotifier() : super(const SettingsLabelStatus(
      flag: false, index: 1, roll: "readOnly",
      userList:[UserLabelStatus(name: "test1", label: "readOnly"),
        UserLabelStatus(name: "test2", label: "readOnly")]));

  void changeFlag(bool status) {
    state = state.copyWith(flag: status);
  }

  void changeIndex(int index) {
    state = state.copyWith(index: index);
  }

  void changeRoll(String? roll) {
    state = state.copyWith(roll: roll!);
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