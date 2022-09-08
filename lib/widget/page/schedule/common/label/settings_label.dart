import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/widget/dialog/settings_user_dialog.dart';

import '../../../../../provider/event_update_provider.dart';

class SettingsLabel extends HookConsumerWidget {

  const SettingsLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final detail = ref.watch(eventUpdateProvider);
    final participants = useState(detail.participants);


    return Scaffold(
      appBar: AppBar(
        title: const Text("ラベル設定"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              height: 400,
              padding: EdgeInsets.all(4),
              child: ListView.builder(
                itemCount: participants.value.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 50,
                    child: ListTile(
                      title: Text(participants.value[index].username),
                      leading: Icon(Icons.person),
                      trailing: Text(
                          participants.value[index].label == 0 ? "readOnly" : 'edit',
                          textAlign: TextAlign.right),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (_) => SimpleDialog(
                              title: const Text("ラベル設定"),
                              children: <Widget>[
                                SettingsUserDialog(index: index)
                              ],
                            )
                        );
                      },
                    )
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}