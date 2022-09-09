
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
    final gValue = useState(detail.participants[index].label);

    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          RadioListTile(
            title: RichText(
              text: TextSpan(
                  text: '一般ユーザー',
                  style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black,
                      background: Paint()
                        ..strokeWidth = 19.0
                        ..color = Colors.cyanAccent
                        ..style = PaintingStyle.stroke
                        ..strokeJoin = StrokeJoin.round)),
            ),
            value: 'readonly',
            groupValue: gValue.value,
            onChanged: (value) {
              gValue.value = 'readonly';
            }
          ),
          RadioListTile(
            title: RichText(
              text: TextSpan(
                  text: '管理者',
                  style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                      background: Paint()
                        ..strokeWidth = 19.0
                        ..color = Colors.green
                        ..style = PaintingStyle.stroke
                        ..strokeJoin = StrokeJoin.round)),
            ),
            value: 'editor',
            groupValue: gValue.value,
            onChanged: (value) {
              gValue.value = 'editor';
            }
          ),OutlinedButton(
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                )
            ),
            onPressed: () async {
              await notifier.updateParticipants([detail.participants[index].copyWith(label: gValue.value),]);
              await notifier.getEventInformation(detail.event.id ?? -1)
                .then((_) {
                Navigator.of(context).pop();
              });
              },
            child:  const Text('確定'),
          ),
        ],
      );
  }
}