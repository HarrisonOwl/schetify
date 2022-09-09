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
      backgroundColor: Colors.green,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Padding(
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
                  Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 0.12),
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
                            hintText: 'パスワード確認',
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
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0, left: 30.0, right: 30.0, bottom: 30.0),
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
                        onPressed: () => Navigator.pushNamed(context, '/settings/account/password/change'),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.grey,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}