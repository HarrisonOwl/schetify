import 'package:freezed_annotation/freezed_annotation.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/attend_status.freezed.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class AttendStatus with _$AttendStatus {
  const factory AttendStatus({
    required String attend,
  }) = _AttendStatus;
}