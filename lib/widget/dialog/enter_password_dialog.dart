import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'change_password_dialog.dart';

class EnterPasswordDialog extends HookConsumerWidget {

  const EnterPasswordDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var password = useState("");

    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'パスワード確認',
                prefixText: 'パスワード確認',
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
              obscureText: true,
              textAlign: TextAlign.end,
              initialValue: password.value,
              onChanged: (text){
                password.value = text;
              },
            ),
            ListTile(
              title: const Text('次へ'),
              onTap: () => {
                showDialog(
                  context: context,
                  builder: (_) => const SimpleDialog(
                    title: Text("パスワード設定"),
                    children: <Widget>[
                      ChangePasswordDialog()
                    ],
                  )
                )},
            ),
          ],
        ),
      );
  }
}