import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EnterPasswordPage extends HookConsumerWidget {

  const EnterPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var password = useState("");

    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green,
            child: Padding(padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  children: const [
                    Icon(
                      Icons.password,
                      size: 40,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text( 'パスワード変更' , style: TextStyle(color: Colors.white, fontSize: 26.0,), textAlign: TextAlign.left),
                  ],
                ),
              ),
            ),
          ),
          Center(
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
                    onTap: () => Navigator.pushNamed(context, '/settings/account/password/change')
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}