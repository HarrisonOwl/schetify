import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/firebase_auth_provider.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = useState("");
    final password = useState("");
    final firebase = ref.read(firebaseAuthProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: const Text("ログイン"),),
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
              obscureText: true,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500
              ),
              onChanged: (value) => password.value = value,
              maxLines:1 ,
              // onChanged: _handleText,
              decoration: const InputDecoration(
                hintText: "パスワード",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){
                      try{
                        firebase.signInWithEmailAndPassword(email.value, password.value).then((_) => {
                          Navigator.of(context).pushNamedAndRemoveUntil("/main", (route) => false)
                        });
                      }catch(e){
                        debugPrint("Login Error!");
                      }
                    },
                    child: const Text('ログイン')
                )
            ),
          ],
        ),
      ),
    );
  }
}