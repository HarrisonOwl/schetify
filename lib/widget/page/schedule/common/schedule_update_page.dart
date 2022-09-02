import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/schedule_list_provider.dart';

import '../../../../model/entity/schedule.dart';

class ScheduleUpdatePage extends HookConsumerWidget {
  ScheduleUpdatePage({Key? key}) : super(key: key);

  List<Schedule> scheduleList = [Schedule(scheduleTitle: "a", scheduleDescription: "b")];

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
                var a = const Schedule(scheduleTitle: "a", scheduleDescription: "b");
                ref.read(scheduleListProvider.notifier)
                    .changeScheduleList(scheduleList.add(a));
                Navigator.of(context).pop();
              },
              child: Text(
                "作成",
              ),
            ),
          ],
        ),
      ),
    );
  }
}