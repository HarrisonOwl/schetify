import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var calenderFlag = useState(false);
    var noticeFlag = useState(false);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SwitchListTile(
              title: const Text('カレンダー登録設定'),
              value: calenderFlag.value,
              secondary: const Icon(Icons.lightbulb_outline),
              onChanged: (value){
                calenderFlag.value = value;
              }
            ),SwitchListTile(
                title: const Text('通知設定'),
                value: noticeFlag.value,
                secondary: const Icon(Icons.lightbulb_outline),
                onChanged: (value){
                  noticeFlag.value = value;
                }
            ),ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                minimumSize: const Size.fromHeight(50), // NEW
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("/settings/account");
              },
              child: const Text('アカウント設定'),
            ),ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                minimumSize: const Size.fromHeight(50), // NEW
              ),
              onPressed: () {
              },
              child: const Text('ログアウト'),
            ),
          ],
        ),
      ),
    );
  }
}