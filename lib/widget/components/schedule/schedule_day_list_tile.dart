import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/schedule_candidate.dart';

import '../../../provider/event_update_provider.dart';

@immutable
class ScheduleDayListTile extends HookConsumerWidget {
  const ScheduleDayListTile({Key? key, required this.scheduleCandidates, required this.index, required this.eventId}) : super(key: key);

  final SplayTreeSet<ScheduleCandidate> scheduleCandidates;
  final int index;
  final int? eventId;


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(eventUpdateProvider.notifier);

    return ListTile(
      dense: true,
      title: Text(scheduleCandidates.elementAt(index).getText()),
      trailing: IconButton(
        icon: const Icon(Icons.edit_note),
        onPressed: () async {
          final period = scheduleCandidates.elementAt(index);
          TimeOfDay initialStartTimeOfDay = const TimeOfDay(hour: 19, minute: 0);
          TimeOfDay initialEndTimeOfDay = const TimeOfDay(hour: 20, minute: 0);
          final startTimeOfDay = await showTimePicker(
              context: context,
              initialTime: initialStartTimeOfDay,
              helpText: "開始時間を入力してください"
          );
          if(startTimeOfDay != null) {
            final startTime = DateTime(
                period.start_at.year,
                period.start_at.month,
                period.start_at.day,
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
                  period.end_at.year,
                  period.end_at.month,
                  period.end_at.day,
                  endTimeOfDay.hour,
                  endTimeOfDay.minute
              );
              final newPeriod = ScheduleCandidate(
                id: null,
                event_id: eventId,
                start_at: startTime,
                end_at: endTime,
                voters: [],
              );
              notifier.removePeriod(scheduleCandidates.elementAt(index));
              notifier.addPeriod(newPeriod);
            }
          }
        },
      ),
    );
  }
}