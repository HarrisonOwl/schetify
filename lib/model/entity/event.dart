import 'package:freezed_annotation/freezed_annotation.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/event.freezed.dart';
part 'generated/event.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class Event with _$Event {
  const factory Event({
    required int id,
    required String name,
    required String? description,
    required DateTime? start_at,
    required DateTime? end_at,
    required String? img_url,
    required String? location_name,
    required String? location_address,
    required double? location_latitude,
    required double? location_longtiude,
    required int? group_num,
    required int? total_cost,
    required String? questionare_url,
  }) = _Event;

  factory Event.fromJson(Map<String, Object?> json)
  => _$EventFromJson(json);
}
