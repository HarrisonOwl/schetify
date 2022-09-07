import 'package:flutter/material.dart';

import '../../../model/entity/event.dart';

class EventListItemComponent extends StatelessWidget {
  final Widget leading;
  final Event event;
  // final Color tileColor;

  const EventListItemComponent({Key? key, required this.event, required this.leading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(event.name ?? ''),
      subtitle: Text(event.description ?? ''),
      leading: leading,
      onTap: () => {
        Navigator.of(context).pushNamed("/event/detail", arguments: {'id': event.id})
      },
      onLongPress: () => {},
      trailing: const Icon(Icons.more_vert),
    );
  }
}