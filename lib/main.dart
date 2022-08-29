import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/widget/router.dart';

void main() {
  runApp(const ProviderScope(
    child: AppRouter(),
  ),);
}


