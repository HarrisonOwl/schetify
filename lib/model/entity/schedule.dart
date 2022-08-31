import 'package:freezed_annotation/freezed_annotation.dart';
// {ファイル名}.freezed.dart　と書く
part 'schedule.freezed.dart';
part 'schedule.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    required String scheduleTitle,
    required String scheduleDescription,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, Object?> json)
  => _$ScheduleFromJson(json);
}