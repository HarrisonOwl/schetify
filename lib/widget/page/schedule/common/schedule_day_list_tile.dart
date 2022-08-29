import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

@immutable
class ScheduleDayListTile extends StatelessWidget {
  ScheduleDayListTile({required this.day});

  final DateTime day;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(
          DateFormat('yyyy/MM/dd(E)')
              .format(day)
              .replaceAll('Sun', '日')
              .replaceAll('Mon', '月')
              .replaceAll('Tue', '火')
              .replaceAll('Wed', '水')
              .replaceAll('Thu', '木')
              .replaceAll('Fri', '金')
              .replaceAll('Sat', '土')
      )
    );
  }
}