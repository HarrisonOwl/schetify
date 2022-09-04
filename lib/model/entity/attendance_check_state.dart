import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schetify/model/entity/attend_status.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/attendance_check_state.freezed.dart';
part 'generated/attendance_check_state.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class AttendanceCheckState with _$AttendanceCheckState {
  const factory AttendanceCheckState({
    @AttendStatusListConverter() required List<AttendStatus> statusList,
  }) = _AttendanceCheckState;

  factory AttendanceCheckState.fromJson(Map<String, Object?> json)
  => _$AttendanceCheckStateFromJson(json);
}

class AttendStatusListConverter implements JsonConverter<List<AttendStatus>, List<Map<String, dynamic>>> {
  const AttendStatusListConverter();

  @override
  List<AttendStatus> fromJson(List<Map<String, dynamic>> json) {
    final ret = json.map((status) => AttendStatus.fromJson(status)).toList();
    return ret;
  }

  @override
  List<Map<String, dynamic>> toJson(List<AttendStatus> json) {
    final ret = json.map((status) => status.toJson()).toList();
    return ret;
  }
}