import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/schedule_list_provider.dart';

import '../../../../model/entity/schedule.dart';

List<Schedule> scheduleList = [];

class ScheduleUpdatePage extends HookConsumerWidget {
  ScheduleUpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("予定作成&編集"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                scheduleList.add(const Schedule(scheduleTitle: "b", scheduleDescription: "c"));
                ref.read(scheduleListProvider.notifier)
                    .changeScheduleList(scheduleList);
                Navigator.of(context).pop();
              },
              child: const Text(
                "作成",
              ),
            ),
          ],
        ),
      ),
    );
  }
}