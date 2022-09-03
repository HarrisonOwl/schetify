import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schetify/model/entity/user_label_status.dart';
part 'settings_label_status.freezed.dart';



@freezed
class SettingsLabelStatus with _$SettingsLabelStatus{
  const factory SettingsLabelStatus({
    required bool flag,
    required List<UserLabelStatus> userList,
  }) = _SettingsLabelStatus;
}