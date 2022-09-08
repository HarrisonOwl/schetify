import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class InitPage extends HookConsumerWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Text("Schetify",style: GoogleFonts.lato(fontSize: 65, color: Colors.white, fontWeight: FontWeight.w700)),
            const SizedBox(height: 370),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        )
                    ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/init/login");
                      },
                      child: const Text('はじめる', style: TextStyle(color: Colors.green, fontSize: 20),)
                  )
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
                height: 40,
                width: 200,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/init/register");
                    },
                    child: const Text('サインアップ', style: TextStyle(color: Colors.white))
                )
            ),
          ],
        ),
      ),
    );
  }
}