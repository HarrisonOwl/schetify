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
                ListTile(
                  title: const Text('ユーザ名変更'),
                  leading: const Icon(Icons.person),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  onTap: () => {
                    // TODO 名前変更用のダイアログを表示
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text('メールアドレス変更'),
                  leading: const Icon(Icons.mail),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  onTap: () => {
                    // TODO メアド変更用のダイアログを表示
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text('パスワード変更'),
                  leading: const Icon(Icons.password),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/settings/account/password');
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text('Google account'),
                  leading: const Icon(Icons.account_box),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  onTap: () {
                    // TODO 設定画面へ
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text('Facebook account'),
                  leading: const Icon(Icons.account_box),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  onTap: () {
                    // TODO 設定画面へ
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text('Twitter account'),
                  leading: const Icon(Icons.account_box),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  onTap: () {
                    // TODO 設定画面へ
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}