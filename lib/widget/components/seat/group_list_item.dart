import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../model/entity/event.dart';
import '../../../model/entity/participant.dart';
import '../../../provider/event_list_provider.dart';

class GroupListItemComponent extends HookConsumerWidget {
  final String groupName;
  final List<Participant> participants;
  const GroupListItemComponent({Key? key, required this.groupName, required this.participants}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10), child: Center(child: Container(
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(groupName, style: const TextStyle(color: Colors.black, fontSize: 20.0,), textAlign: TextAlign.left),
            ),
            Column(children: [
              for (final participant in participants) Row(children: [
                Icon(Icons.person),
                Text(participant.username)
              ],)
            ],)
          ],
        ),
      ))));
  }
}