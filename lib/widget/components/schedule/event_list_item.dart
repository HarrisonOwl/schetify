import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../model/entity/event.dart';
import '../../../provider/event_list_provider.dart';

class EventListItemComponent extends HookConsumerWidget {
  final Event event;
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd hh:mm');
  // final Color tileColor;
  EventListItemComponent({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(eventListProvider.notifier);

    return Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10), child: Center(child: Container(
      height: 115,
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
        title: Text(event.name ?? '', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(event.description != null) Text(event.description!),
            Row(children: [
              const Icon(Icons.calendar_month_rounded),
              Text((event.start_at != null && event.end_at != null) ? '${dateFormat.format(event.start_at!)}~${dateFormat.format(event.end_at!)}' : '未定')
            ],),
            Row(children: [
              const Icon(Icons.location_on),
              Text((event.location_name != null) ? event.location_name! : '未定')
            ],),
          ],
        ),
        onTap: () => {
          Navigator.of(context).pushNamed("/event/detail", arguments: {'id': event.id})
              .then((value) async {
            await notifier.getEvents();
          })
        },
        onLongPress: () => {},
      ),)));
  }
}