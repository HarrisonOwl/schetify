import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/attend_status.freezed.dart';
part 'generated/attend_status.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class AttendStatus with _$AttendStatus {
  const AttendStatus._();
  const factory AttendStatus({
    required int schedule_candidate_id,
    required int status,
  }) = _AttendStatus;

  factory AttendStatus.fromJson(Map<String, Object?> json)
  => _$AttendStatusFromJson(json);
}
