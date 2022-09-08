import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../provider/event_list_provider.dart';
import '../components/schedule/event_list_item.dart';

class EventPage extends HookConsumerWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(eventListProvider);
    final notifier = ref.read(eventListProvider.notifier);

    Future<void> updateEventInformation() async {
      await notifier.getEvents();
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
      body: data.loading ? Container(
          alignment: Alignment.center,
          child: const CircularProgressIndicator(
            color: Colors.green,
          )
      ) : ListView.separated(
        itemCount: data.eventList.length,
        itemBuilder: (BuildContext context, int index) {
          final event = data.eventList[index];
          return EventListItemComponent(
            event: event,
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pushNamed("/event/new")
            .then((value) async {
              await notifier.getEvents();
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

