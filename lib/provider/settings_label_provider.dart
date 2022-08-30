import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/entity/settings_label_status.dart';

class SettingsLabelNotifier extends StateNotifier<SettingsLabelStatus> {
  SettingsLabelNotifier() : super(const SettingsLabelStatus(
      flag: false, label: 'readOnly'));

  void changeFlag(bool status) {
    state = state.copyWith(flag: status);
  }

  void changeLabel(String? roll) {
    state = state.copyWith(label: roll);
  }
}

final settingsLabelProvider = StateNotifierProvider<SettingsLabelNotifier
,SettingsLabelStatus>((ref) {
  return SettingsLabelNotifier();
});