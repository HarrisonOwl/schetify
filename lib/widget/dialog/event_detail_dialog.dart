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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              initialValue: detail.event.description,
              keyboardType: TextInputType.multiline,
              maxLines: null,
                onChanged: updateText
            ),ListTile(
              title: const Text('保存'),
              onTap: () async {
                await notifier.updateDescription(detailText.value)
                    .then((status) {
                      if(status == 200) {
                        Navigator.of(context).pop();
                        notifier.getEventInformation(detail.event.id ?? -1);
                      }
                      else {
                        ScaffoldMessenger.of(context).showSnackBar(alertSnackBar);
                      }
                });
              },
            ),
          ],
        ),
    );
  }
}