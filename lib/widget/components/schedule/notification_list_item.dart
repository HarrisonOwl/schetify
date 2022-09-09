import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../model/entity/event_notification.dart';
import '../../../provider/notification_list_provider.dart';

class NotificationListItemComponent extends HookConsumerWidget {
  final EventNotification notification;
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd hh:mm');
  // final Color tileColor;
  NotificationListItemComponent({Key? key, required this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(notificationListProvider.notifier);

    return Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1), child: Center(child: Container(
      height: 80,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(20)
        ),
        // ここまで
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 3,
            offset: Offset(2, 4), // Shadow position
          ),
        ],
      ),
      child: ListTile(
        title: Text('${notification.event_name}: ${notification.title}', style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(notification.contents, overflow: TextOverflow.ellipsis),
            Row(children: [
              const Icon(Icons.date_range),
              Text(notification.created_at.toString())
            ],),
          ],
        ),
        onTap: () => {
          Navigator.of(context).pushNamed("/event/detail", arguments: {'id': notification.event_id})
              .then((value) async {
            await notifier.getNotifications();
          })
        },
        onLongPress: () => {},
      ),)));
  }
}