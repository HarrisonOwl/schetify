import 'package:freezed_annotation/freezed_annotation.dart';
part 'settings_label_status.freezed.dart';

@freezed
class SettingsLabelStatus with _$SettingsLabelStatus{
  const factory SettingsLabelStatus({
    required bool flag,
    required String? label,
  }) = _SettingsLabelStatus;
}