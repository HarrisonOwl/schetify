import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../provider/notification_list_provider.dart';
import '../../../components/schedule/notification_list_item.dart';

class NotificationPage extends HookConsumerWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(notificationListProvider);
    final notifier = ref.read(notificationListProvider.notifier);

    Future<void> updateEventInformation() async {
      await notifier.getNotifications();
    }

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        Future<void>.microtask(() async {
          await updateEventInformation();
        });
      });
      return null;
    }, const []);

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: data.loading ? Container(
          alignment: Alignment.center,
          child: const CircularProgressIndicator(
            color: Colors.white,
          )
      ) : Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: SizedBox(
                width: double.infinity,
                child:  Row(
                  children: const [
                    Icon(
                      Icons.notifications,
                      size: 45,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text( "通知" , style: TextStyle(color: Colors.white, fontSize: 30.0,), textAlign: TextAlign.left),
                  ],
                ),
              )
          ),
          Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: SizedBox(
                height: 400,
                child: ListView.separated(
                  itemCount: data.notificationList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final notification = data.notificationList[index];
                    return NotificationListItemComponent(
                      notification: notification,
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                ),
              )
          )
        ],
      )
    );
  }
}

