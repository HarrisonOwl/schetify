import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../provider/firebase_auth_provider.dart';

class UserRegistrationPage extends HookConsumerWidget {
  const UserRegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final email = useState("");
    final password = useState("");
    final firebase = ref.read(firebaseAuthProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: const Text("サインアップ"),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              enabled: true,
              // maxLengthEnforced: false,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500
              ),
              maxLines:1 ,
              onChanged: (value) => email.value = value,
              decoration: const InputDecoration(
                hintText: "メールアドレス",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            TextFormField(
              enabled: true,
              // maxLengthEnforced: false,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500
              ),
              obscureText: true,
              maxLines:1 ,
              onChanged: (value) => password.value = value,
              decoration: const InputDecoration(
                hintText: "パスワード",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      try{
                        firebase.signUpWithEmailAndPassword(email.value, password.value).then((_) => {
                          Navigator.of(context).pushNamedAndRemoveUntil("/main", (route) => false)
                        });
                      }catch(e){
                        debugPrint("Register Error!");
                      }
                    },
                    child: const Text('新規作成')
                )
            ),
          ],
        ),
      ),
    );
  }
}