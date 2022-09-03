import 'package:freezed_annotation/freezed_annotation.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/schedule_destination.freezed.dart';
part 'generated/schedule_destination.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class ScheduleDestination with _$ScheduleDestination {
  const ScheduleDestination._();
  const factory ScheduleDestination({
    required String? name,
    required String? address,
    required double? latitude,
    required double? longitude,
  }) = _ScheduleDestination;

  factory ScheduleDestination.fromJson(Map<String, Object?> json)
  => _$ScheduleDestinationFromJson(json);
}