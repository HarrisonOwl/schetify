import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/event_notification.dart';
import 'package:schetify/model/repository/event_repository.dart';

import '../model/entity/notification_list.dart';

final notificationListProvider = StateNotifierProvider<NotificationDataNotifier, NotificationList>((ref){
  return NotificationDataNotifier();
});

class NotificationDataNotifier extends StateNotifier<NotificationList> {
  NotificationDataNotifier(): super(const NotificationList(
      loading: true,
      error: false,
      notificationList: []
  ));

  final EventRepository eventService = EventRepository();

  void changeLoading(bool loading) {
    state = state.copyWith(loading: loading);
  }
  void changeError(bool error) {
    state = state.copyWith(error: error);
  }

  void changeNotificationList(List<EventNotification> notificationList) {
    state = state.copyWith(notificationList: notificationList);
  }

  Future<void> getNotifications() async {
    changeLoading(true);
    try{
      final notifications = await eventService.getNotifications();
      state = NotificationList(loading: false, error: false, notificationList: notifications);
    }catch(e){
      state = state.copyWith(loading: false, error: true);
      debugPrint(e.toString());
    }
  }
}
