import 'package:schetify/model/entity/event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_notification.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/notification_list.freezed.dart';

@freezed
class NotificationList with _$NotificationList{
  const factory NotificationList({
    required bool loading,
    required bool error,
    required List<EventNotification> notificationList,
  }) = _NotificationList;

}