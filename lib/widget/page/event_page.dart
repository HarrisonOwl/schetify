import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../provider/event_list_provider.dart';
import '../components/schedule/event_list_item.dart';

class EventPage extends HookConsumerWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(eventListProvider);

    return Scaffold(
      body: ListView.separated(
        itemCount: data.eventList.length,
        itemBuilder: (BuildContext context, int index) {
          final event = data.eventList[index];
          return EventListItemComponent(
            event: event,
            leading: ConstrainedBox(
                constraints: const BoxConstraints(
                    minHeight: 44,
                    minWidth: 34,
                    maxHeight: 64,
                    maxWidth: 54),
                child: const Icon(Icons.event)),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pushNamed("/schedule/new");
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

