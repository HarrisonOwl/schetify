import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/event_update_provider.dart';

class EventDetailDialog extends HookConsumerWidget {

  const EventDetailDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final notifier = ref.read(eventUpdateProvider.notifier);
    final detail = ref.watch(eventUpdateProvider);
    final detailText = useState(detail.event.description);

    SnackBar alertSnackBar = SnackBar(
      content: const Text('更新に失敗しました。'),
      action: SnackBarAction(
        label: '閉じる',
        onPressed: (){
          //閉じるが押された時行いたい処理
        },
      ),
    );

    void updateText(String? text) {
      detailText.value = text;
    }

    return Center(
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20),child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 5),
            TextFormField(
                initialValue: detail.event.description,
                keyboardType: TextInputType.multiline,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 12,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    ),
                ),
                maxLines: null,
                onChanged: updateText
            ),
            const SizedBox(height: 10),
            Padding(padding: const EdgeInsets.all(5), child: SizedBox(width: 70, height: 45, child: OutlinedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  )
              ),
              onPressed: () async {
                await notifier.updateDescription(detailText.value)
                    .then((_) {
                  Navigator.of(context).pop();
                  notifier.getEventInformation(detail.event.id ?? -1);
                }).onError((error, stackTrace) {
                  ScaffoldMessenger.of(context).showSnackBar(alertSnackBar);
                });
              },
              child: const Text('保存'),
            ))),
          ],
        )),
    );
  }
}