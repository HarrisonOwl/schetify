import 'package:freezed_annotation/freezed_annotation.dart';
part 'generated/user_label_status.freezed.dart';

@freezed
class UserLabelStatus with _$UserLabelStatus{
  const factory UserLabelStatus({
    required String name,
    required String label,
  }) = _UserLabelStatus;
}