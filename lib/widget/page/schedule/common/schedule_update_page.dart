import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/schedule_list_provider.dart';

import '../../../../model/entity/schedule.dart';

List<Schedule> scheduleList = [];

class ScheduleUpdatePage extends HookConsumerWidget {
  ScheduleUpdatePage({Key? key}) : super(key: key);
  final List<String> buttonName = <String>[
    "日にち設定",
    "席分け設定",
    "ラベル設定",
    "割り勘設定",
    "目的地設定",
    "アンケート設定",
    "出席確認on/off",
    "ユーザー設定画面(url発行)",
  ];
  final List<String> routeName = <String>[
    "/schedule/new/day",
    "/schedule/new/seat",
    "/schedule/new/label",
    "/schedule/new/cost",
    "/schedule/new/destination",
    "/schedule/new/questionnaire",
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("予定作成&編集"),
      ),
      body: Align(
          alignment: Alignment.bottomCenter,
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: buttonName.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(routeName[index]);
                    },
                    child: Text(buttonName[index])
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          )
      )
      // body: ListView.separated(
      //   padding: const EdgeInsets.all(8),
      //   itemCount: buttonName.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return Container(
      //         height: 50,
      //         // padding: const EdgeInsets.all(8.0), //マージン
      //         child: ElevatedButton(
      //             onPressed: () {
      //               Navigator.of(context).pushNamed("/");
      //             },
      //             child: Text('Entry ${buttonName[index]}')
      //         ),
      //     );
      //   },
      //   separatorBuilder: (BuildContext context, int index) => const Divider(),
      // )
    );
  }
}