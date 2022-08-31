import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EnterPassword extends HookConsumerWidget {
  const EnterPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var password = useState("");

    return Scaffold(
      body: Center(
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
              onTap: () { Navigator.of(context).pushNamed("/settings/account/changePassword");},
            ),
          ],
        ),
      ),
    );
  }
}