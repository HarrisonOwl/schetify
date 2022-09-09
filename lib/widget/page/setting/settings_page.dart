import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../provider/firebase_auth_provider.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firebase = ref.read(firebaseAuthProvider.notifier);
    final calenderFlag = useState(false);
    final noticeFlag = useState(false);

    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
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
                      Text( '設定画面' , style: TextStyle(color: Colors.white, fontSize: 26.0,), textAlign: TextAlign.left),
                    ],
                  ),
                ),
              ),
            ),
            Center(
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
                  ),
                  const Divider(),
                  SwitchListTile(
                      title: const Text('通知設定'),
                      value: noticeFlag.value,
                      secondary: const Icon(Icons.lightbulb_outline),
                      onChanged: (value){
                        noticeFlag.value = value;
                      }
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('アカウント設定'),
                    leading: const Icon(Icons.person),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                    onTap: () => {
                      Navigator.of(context).pushNamed("/settings/account")
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('ログアウト'),
                    leading: const Icon(Icons.logout),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                    onTap: (){
                      firebase.signOut().then((value) => Navigator.of(context).pushNamedAndRemoveUntil("/init", (route) => false));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}