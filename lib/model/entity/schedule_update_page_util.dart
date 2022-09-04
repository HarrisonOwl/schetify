import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ScheduleUpdatePageUtil {
  final String tileName;
  final String routeName;
  final Icon? iconName;
  final Consumer toggleConsumer;

  ScheduleUpdatePageUtil(this.tileName, this.routeName, this.iconName,
      this.toggleConsumer);
}