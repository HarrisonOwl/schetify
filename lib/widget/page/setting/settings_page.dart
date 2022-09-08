import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/widget/dialog/settings_account_dialog.dart';

import '../../../provider/firebase_auth_provider.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firebase = ref.read(firebaseAuthProvider.notifier);
    final calenderFlag = useState(false);
    final noticeFlag = useState(false);

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
            ),
            ListTile(
              title: const Text('アカウント設定'),
              onTap: () => {
                showDialog(
                  context: context,
                  builder: (_) => const SimpleDialog(
                    title: Text("アカウント設定"),
                    children: <Widget>[
                      SettingsAccountDialog()
                    ],
                  )
              )},
            ),
            ListTile(
                title: const Text('ログアウト'),
                onTap: (){
                  firebase.signOut().then((value) => Navigator.of(context).pushNamedAndRemoveUntil("/init", (route) => false));
                },
            ),
          ],
        ),
      ),
    );
  }
}