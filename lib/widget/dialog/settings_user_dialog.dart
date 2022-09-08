
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/event_update_provider.dart';

class SettingsUserDialog extends HookConsumerWidget {

  const SettingsUserDialog({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final detail = ref.watch(eventUpdateProvider);
    final notifier = ref.read(eventUpdateProvider.notifier);
    final participants = useState(detail.participants);
    final gValue = useState(detail.participants[index].label);

    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          SizedBox(
            width: 80,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(participants.value[index].username)
            ),
          ),
          RadioListTile(
            title: const Text('readOnly'),
            value: 'readonly',
            groupValue: gValue.value,
            onChanged: (value) {
              gValue.value = 'readonly';
            }
          ),
          RadioListTile(
            title: const Text('edit'),
            value: 'editor',
            groupValue: gValue.value,
            onChanged: (value) {
              gValue.value = 'editor';
            }
          ),OutlinedButton(
            child:  const Text('確定'),
            onPressed: () async {
              await notifier.updateParticipants([detail.participants[index].copyWith(label: gValue.value),]);
              await notifier.getEventInformation(detail.event.id ?? -1)
                .then((_) {
                Navigator.of(context).pop();
              });
              },
          ),
        ],
      );
  }
}