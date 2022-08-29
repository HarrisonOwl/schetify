import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              enabled: true,
              maxLength: 10,
              // maxLengthEnforced: false,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.w500
              ),
              obscureText: true,
              maxLines:1 ,
              // onChanged: _handleText,
              decoration: InputDecoration(
                hintText: "MAIL ADDRESS",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const TextField(
              enabled: true,
              maxLength: 10,
              // maxLengthEnforced: false,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500
              ),
              obscureText: true,
              maxLines:1 ,
              // onChanged: _handleText,
              decoration: InputDecoration(
                hintText: "PASSWORD",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil("/", (route) => false);
                },
                child: Text('Twitter Login')
            ),
          ],
        ),
      ),
    );
  }
}