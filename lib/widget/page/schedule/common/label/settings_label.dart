import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/settings_label_provider.dart';

import '../../../../../provider/user_label_provider.dart';

class SettingsLabel extends HookConsumerWidget {

  const SettingsLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final settingsLabel = ref.watch(settingsLabelProvider);
    final roll = useState("readOnly");
    final whichUser = useState(1);

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
            ListTile(
              title: Text(settingsLabel.userList[whichUser.value].name),
              onTap: () => {

              },
            ),
            DropdownButton(
              value: roll.value,
              items: const [
                DropdownMenuItem(
                  value: 'readOnly',
                  child: Text('readOnly'),
                ),
                DropdownMenuItem(
                  value: 'edit',
                  child: Text('edit'),
                ),
              ],
              onChanged: (String? value) {
                roll.value = value!;
              },
            ),ListTile(
              title: Text('確定'),
              onTap: () { ref.read(settingsLabelProvider.notifier)
                  .changeUserLabel(whichUser.value, roll.value);},
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
                        whichUser.value = index;
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