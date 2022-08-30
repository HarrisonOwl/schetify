import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/settings_label_provider.dart';

class SettingsLabel extends HookConsumerWidget {

  const SettingsLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final provider = ref.watch(settingsLabelProvider);
    var userName = useState("hoge");
    var roll = useState(provider.label);

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
              value: provider.flag,
              onChanged: (value) => ref.read(settingsLabelProvider.notifier)
                  .changeFlag(value),
              secondary: const Icon(Icons.lightbulb_outline),
            ),
            TextFormField(
                decoration: const InputDecoration(
                  hintText: 'ユーザー名',
                  border: OutlineInputBorder(),
                ),
                enabled: provider.flag,
                keyboardType: TextInputType.number,
                initialValue: userName.value,
                onChanged: (text){
                  userName.value = text;
                }
            ),DropdownButton(
              value: roll.value,
              items: const [
                DropdownMenuItem(
                  value: 'readOnly',
                  child: Text('readOnly'),
                ),
                DropdownMenuItem(
                  value: 'exit',
                  child: Text('exit'),
                ),
              ],
              onChanged: (String? value) {
                roll.value = value;
              },
            ),ElevatedButton(
              onPressed: () {
                ref.read(settingsLabelProvider.notifier)
                    .changeLabel(roll.value);
                Navigator.of(context).pop();
              },
              child: const Text('確定'),
            )
          ],
        ),
      ),
    );
  }
}