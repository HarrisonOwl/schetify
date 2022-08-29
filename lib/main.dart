import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:schetify/widget/router.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const ProviderScope(
    child: AppRouter(),
  ),));
}


