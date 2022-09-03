import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/schedule_period.dart';
import 'package:schetify/provider/schedule_day_provider.dart';

@immutable
class ScheduleDayListTile extends HookConsumerWidget {
  const ScheduleDayListTile({Key? key, required this.periodList, required this.index}) : super(key: key);

  final SplayTreeSet<SchedulePeriod> periodList;
  final int index;


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      dense: true,
      title: Text(periodList.elementAt(index).getText()),
      trailing: IconButton(
        icon: const Icon(Icons.edit_note),
        onPressed: () async {
          final period = periodList.elementAt(index);
          TimeOfDay initialStartTimeOfDay = const TimeOfDay(hour: 19, minute: 0);
          TimeOfDay initialEndTimeOfDay = const TimeOfDay(hour: 20, minute: 0);
          final startTimeOfDay = await showTimePicker(
              context: context,
              initialTime: initialStartTimeOfDay,
              helpText: "開始時間を入力してください"
          );
          if(startTimeOfDay != null) {
            final startTime = DateTime(
                period.startTime.year,
                period.startTime.month,
                period.startTime.day,
                startTimeOfDay.hour,
                startTimeOfDay.minute
            );
            final endTimeOfDay = await showTimePicker(
                context: context,
                initialTime: initialEndTimeOfDay,
                helpText: "終了時間を入力してください"
            );
            if(endTimeOfDay != null) {
              final endTime = DateTime(
                  period.endTime.year,
                  period.endTime.month,
                  period.endTime.day,
                  endTimeOfDay.hour,
                  endTimeOfDay.minute
              );
              final newPeriod = SchedulePeriod(
                  startTime: startTime,
                  endTime: endTime
              );
              ref.read(scheduleDayProvider.notifier)
                  .removePeriod(periodList.elementAt(index));
              ref.read(scheduleDayProvider.notifier)
                  .addPeriod(newPeriod);
            }
          }
        },
      ),
    );
  }
}