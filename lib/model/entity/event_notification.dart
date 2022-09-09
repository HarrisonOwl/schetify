import 'package:freezed_annotation/freezed_annotation.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/event_notification.freezed.dart';
part 'generated/event_notification.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class EventNotification with _$EventNotification {
  const EventNotification._();
  const factory EventNotification({
    required int id,
    required int event_id,
    required String event_name,
    required String title,
    required String contents,
    required DateTime created_at,
  }) = _EventNotification;

  factory EventNotification.fromJson(Map<String, Object?> json)
  => _$EventNotificationFromJson(json);
}
