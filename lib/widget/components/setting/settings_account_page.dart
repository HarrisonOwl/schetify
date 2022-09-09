import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsAccountPage extends HookConsumerWidget {

  const SettingsAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var name = useState("hoge");
    var email = useState("hoge@hoge");

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
                      Icons.settings,
                      size: 40,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text( 'アカウント設定' , style: TextStyle(color: Colors.white, fontSize: 26.0,), textAlign: TextAlign.left),
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
                    Navigator.pushNamed(context, '/settings/account/password');
                  },
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
          )
        ],
      ),
    );
  }
}