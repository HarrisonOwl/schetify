import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/event.freezed.dart';
part 'generated/event.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class Event with _$Event {
  const Event._();
  const factory Event({
    required int? id,
    required String? name,
    required String? description,
    required DateTime? start_at,
    required DateTime? end_at,
    required String? img_url,
    required String? location_name,
    required String? location_address,
    required double? location_latitude,
    required double? location_longitude,
    required int? group_num,
    required String? cost_type,
    required int? cost,
    required String? questionnaire_url,
  }) = _Event;

  String getText() {
    String str1 = DateFormat('yyyy/MM/dd(E) HH:mm~')
        .format(start_at ?? DateTime.now())
        .replaceAll('Sun', '日')
        .replaceAll('Mon', '月')
        .replaceAll('Tue', '火')
        .replaceAll('Wed', '水')
        .replaceAll('Thu', '木')
        .replaceAll('Fri', '金')
        .replaceAll('Sat', '土');
    String str2 = DateFormat('HH:mm')
        .format(end_at ?? DateTime.now());
    return str1 + str2;
  }

  String getLocationText() {
    String ret = '';
    if(location_name != null) {
      ret += '$location_name, ';
    }
    if(location_address != null) {
      ret += location_address!;
    }
    return ret;
  }

  factory Event.fromJson(Map<String, Object?> json)
  => _$EventFromJson(json);
}
