import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'enter_password_dialog.dart';

class SettingsAccountDialog extends HookConsumerWidget {

  const SettingsAccountDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var name = useState("hoge");
    var email = useState("hoge@hoge");

    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'ユーザー名',
                prefixText: 'ユーザー名',
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
              textAlign: TextAlign.end,
              initialValue: name.value,
              onChanged: (text){
                name.value = text;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'メールアドレス',
                prefixText: 'メールアドレス',
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
              textAlign: TextAlign.end,
              initialValue: email.value,
              onChanged: (text){
                email.value = text;
              },
            ),
            ListTile(
              title: const Text('パスワード変更'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => const SimpleDialog(
                    title: Text("パスワード入力"),
                    children: <Widget>[
                      EnterPasswordDialog()
                    ],
                  )
              ); },
            ),
            const ListTile(
              title: Text('google account'),
            ),
            const ListTile(
              title: Text('facebook account'),
            ),
            const ListTile(
              title: Text('twitter account'),
            ),
            ListTile(
              title: const Text('保存'),
              onTap: () { Navigator.of(context).pop(); },
            ),
          ],
        ),
      );
  }
}