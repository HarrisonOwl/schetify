import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/settings_label_provider.dart';
import 'package:schetify/widget/components/settingsLabel/settings_user_dialog.dart';

class SettingsLabel extends HookConsumerWidget {

  const SettingsLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final settingsLabel = ref.watch(settingsLabelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("割り勘設定"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            SwitchListTile(
              title: const Text('ラベル設定'),
              value: settingsLabel.flag,
              onChanged: (value) => ref.read(settingsLabelProvider.notifier)
                  .changeFlag(value),
              secondary: const Icon(Icons.lightbulb_outline),
            ),
            Container(
              height: 400,
              padding: EdgeInsets.all(4),
              child: ListView.builder(
                itemCount: settingsLabel.userList.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    child: ListTile(
                      enabled: settingsLabel.flag,
                      title: Text(settingsLabel.userList[index].name),
                      onTap: () {
                        ref.read(settingsLabelProvider.notifier)
                          .changeIndex(index);
                        showDialog(
                            context: context,
                            builder: (_) => const SimpleDialog(
                              title: Text("ラベル設定"),
                              children: <Widget>[
                                SettingsUserDialog()
                              ],
                            )
                        );
                      },
                      subtitle: Text(
                        settingsLabel.userList[index].label,
                        textAlign: TextAlign.right),
                    ),
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