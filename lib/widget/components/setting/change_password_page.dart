import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChangePasswordPage extends HookConsumerWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var password = useState("");
    var passwordAgain = useState("");

    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.green,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
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
                  Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 0.10),
                      Container(
                        alignment: const Alignment(0.0, 0.0),
                        height: 100,
                        child: TextFormField(
                          obscureText: true,
                          initialValue: password.value,
                          onChanged: (text){
                            password.value = text;
                          },
                          decoration: InputDecoration(
                            hintText: 'パスワード',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            contentPadding: const EdgeInsets.all(20),
                            isDense: true,
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
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                      Container(
                        alignment: const Alignment(0.0, 0.0),
                        height: 100,
                        child: TextFormField(
                          obscureText: true,
                          initialValue: passwordAgain.value,
                          onChanged: (text){
                            passwordAgain.value = text;
                          },
                          decoration: InputDecoration(
                            hintText: '再入力',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            contentPadding: const EdgeInsets.all(20),
                            isDense: true,
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
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: SizedBox(
                      height: 70,
                      width: 70,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            )
                        ),
                        onPressed: () {
                          int count = 0;
                          Navigator.popUntil(context, (_) => count++ >= 2);
                        },
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.grey,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}