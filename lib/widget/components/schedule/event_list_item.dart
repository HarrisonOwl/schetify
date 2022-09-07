import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../model/entity/event.dart';
import '../../../provider/event_list_provider.dart';

class EventListItemComponent extends HookConsumerWidget {
  final Widget leading;
  final Event event;
  // final Color tileColor;

  const EventListItemComponent({Key? key, required this.event, required this.leading}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(eventListProvider.notifier);
    return ListTile(
      title: Text(event.name ?? ''),
      subtitle: Text(event.description ?? ''),
      leading: leading,
      onTap: () => {
        Navigator.of(context).pushNamed("/event/detail", arguments: {'id': event.id})
          .then((value) async {
            await notifier.getEvents();
          })
      },
      onLongPress: () => {},
      trailing: const Icon(Icons.more_vert),
    );
  }
}