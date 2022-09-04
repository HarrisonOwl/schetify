import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/event_detail_provider.dart';

class EventDetailDialog extends HookConsumerWidget {

  const EventDetailDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final provider = ref.watch(eventDetailProvider);
    final detailText = useState(provider.detail);

    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              initialValue: detailText.value,
              keyboardType: TextInputType.multiline,
              maxLines: null,
                onChanged: (text){
                  detailText.value = text;
                }
            ),ListTile(
              title: const Text('保存'),
              onTap: () {
              ref.read(eventDetailProvider.notifier).changeDetail(detailText.value);
              Navigator.of(context).pop();},
            ),
          ],
        ),
    );
  }
}