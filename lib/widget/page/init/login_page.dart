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
    final errorMsg = useState("");
    final isRunning = useState(false);
    return Scaffold(
        resizeToAvoidBottomInset: false,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,),
      body: Container(color: Colors.green, child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              child: Text("ログイン",  style: TextStyle(color: Colors.white, fontSize: 40.0,), textAlign: TextAlign.left),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 170),
                SizedBox(width: double.infinity, child: Text(errorMsg.value, style: const TextStyle(color: Colors.white, fontSize: 20),textAlign: TextAlign.left,),),
                const SizedBox(height: 10),
                TextFormField(
                  enabled: true,
                  // maxLengthEnforced: false,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500
                  ),
                  maxLines:1 ,
                  onChanged: (value) => email.value = value,
                  decoration: InputDecoration(
                    hintText: "メールアドレス",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  enabled: true,
                  // maxLengthEnforced: false,
                  obscureText: true,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500
                  ),
                  onChanged: (value) => password.value = value,
                  maxLines:1 ,
                  // onChanged: _handleText,
                  decoration: InputDecoration(
                    hintText: "パスワード",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                SizedBox(
                    height: 70,
                    width: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          )
                      ),
                      onPressed: isRunning.value ? null : () async{
                        isRunning.value = true;
                        errorMsg.value = "";
                        await firebase.signInWithEmailAndPassword(email.value, password.value).then((_) {
                          isRunning.value = false;
                          Navigator.of(context).pushNamedAndRemoveUntil("/main", (route) => false);
                        }, onError: (error) {
                          isRunning.value = false;
                          errorMsg.value = "ユーザー作成に失敗しました!";
                        });
                      } ,
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.grey,
                        size: 30.0,
                      ),
                    )
                ),
                const SizedBox(height: 50),
                if (isRunning.value) const CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white))
              ],
            )
          ],
        )
      ),)
    );
  }
}