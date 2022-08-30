import 'package:flutter/material.dart';
import 'package:schetify/model/entity/schedule_period.dart';

@immutable
class ScheduleDayListTile extends StatelessWidget {
  const ScheduleDayListTile({Key? key, required this.period}) : super(key: key);

  final SchedulePeriod period;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(period.getText())
    );
  }
}