import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChangePassword extends HookConsumerWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var password = useState("");
    var passwordAgain = useState("");

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'パスワード',
                prefixText: 'パスワード',
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
              obscureText: true,
              textAlign: TextAlign.end,
              initialValue: password.value,
              onChanged: (text){
                password.value = text;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: '再入力',
                prefixText: '再入力',
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
              obscureText: true,
              textAlign: TextAlign.end,
              initialValue: passwordAgain.value,
              onChanged: (text){
                passwordAgain.value = text;
              },
            ),
            ListTile(
              title: const Text('パスワード変更'),
              onTap: () {
                int count = 0;
                Navigator.popUntil(context, (_) => count++ >= 2);
              },
            ),
          ],
        ),
      ),
    );
  }
}