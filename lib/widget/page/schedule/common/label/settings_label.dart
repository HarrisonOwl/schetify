import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/settings_label_provider.dart';

class SettingsLabel extends HookConsumerWidget {

  const SettingsLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final provider = ref.watch(settingsLabelProvider);
    final List<Map<String, dynamic>> userList = [
      {
        'name': 'test 1',
        'label': 'readOnly',
      },
      {
        'name': 'test 2',
        'label': 'readOnly',
      },
      {
        'name': 'test 3',
        'label': 'readOnly',
      },
      {
        'name': 'test 4',
        'label': 'readOnly',
      },
      {
        'name': 'test 5',
        'label': 'readOnly',
      },
      {
        'name': 'test 6',
        'label': 'readOnly',
      },
      {
        'name': 'test 7',
        'label': 'readOnly',
      },
      {
        'name': 'test 8',
        'label': 'readOnly',
      },
      {
        'name': 'test 9',
        'label': 'readOnly',
      }
    ];
    var userName = useState("hoge");
    var whichUser = useState(1);
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
            ListTile(
              title: Text(userName.value)
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
                roll.value = value;
              },
            ),ListTile(
              title: Text('確定'),
              onTap: () { userList[whichUser.value]['label'] = roll.value; },
            ),
            Container(
              height: 400,
              padding: EdgeInsets.all(4),
              child: ListView.builder(
                itemCount: userList.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    child: ListTile(
                      enabled: provider.flag,
                      title: Text(userList[index]['name']),
                      onTap: () {
                        userName.value = userList[index]['name'];
                        whichUser.value = index;
                      },
                      subtitle: Text(
                        userList[index]['label'],
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