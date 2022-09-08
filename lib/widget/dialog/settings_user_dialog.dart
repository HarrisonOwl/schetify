
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

    return Center(
      child: Column(
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
            title: Text('readOnly'),
            value: 0,
            groupValue: gValue.value,
            onChanged: (value) {
              gValue.value = 0;
            }
          ),
          RadioListTile(
            title: Text('edit'),
            value: 1,
            groupValue: gValue.value,
            onChanged: (value) {
              gValue.value = 1;
            }
          ),OutlinedButton(
            child:  Text('確定'),
            onPressed: () {
              notifier.changeUserLabel(index, gValue.value);
              Navigator.of(context).pop();
              },
          ),
        ],
      ),
    );
  }
}