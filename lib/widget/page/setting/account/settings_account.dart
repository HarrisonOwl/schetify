import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsAccount extends HookConsumerWidget {
  const SettingsAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var name = useState("hoge");
    var email = useState("hoge@hoge");

    return Scaffold(
      body: Center(
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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                minimumSize: const Size.fromHeight(50), // NEW
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("/settings/account/enterPassword");
              },
              child: const Text('パスワード変更'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                minimumSize: const Size.fromHeight(50), // NEW
              ),
              onPressed: () {
              },
              child: const Text('連携'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                minimumSize: const Size.fromHeight(50), // NEW
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('保存'),
            ),
          ],
        ),
      ),
    );
  }
}