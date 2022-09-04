import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:schetify/widget/router.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  //debugPrint(credential.credential.toString());
  initializeDateFormatting().then((_) => runApp(const ProviderScope(
    child: AppRouter(),
  ),));
}


