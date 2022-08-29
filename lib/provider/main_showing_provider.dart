
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final mainPageShowingProvider = StateProvider<MainPageType>((ref) => MainPageType.schedule);

enum MainPageType {
  schedule,
  chat,
  settings
}