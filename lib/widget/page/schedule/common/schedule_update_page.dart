import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/schedule_list_provider.dart';

import '../../../../model/entity/schedule.dart';

List<Schedule> scheduleList = [];

class ScheduleUpdatePage extends HookConsumerWidget {
  ScheduleUpdatePage({Key? key}) : super(key: key);
  List<String> tileName = <String>[
    "日にち設定",
    "席分け設定",
    "ラベル設定",
    "割り勘設定",
    "目的地:",
    "アンケート設定",
    "出席",
    "シェア(URL)",
  ];

  final List<String> routeName = <String>[
    "/schedule/new/day",
    "/schedule/new/seat",
    "/schedule/new/label",
    "/schedule/new/cost",
    "/schedule/new/destination",
    "/schedule/new/questionnaire",
    "/schedule/new/questionnaire",
    "/schedule/new/questionnaire",
  ];

  final List<Icon?> iconName = <Icon?>[
    const Icon(Icons.calendar_today),
    const Icon(Icons.table_bar),
    const Icon(Icons.label),
    const Icon(Icons.money),
    const Icon(Icons.room),
    const Icon(Icons.feed),
    null,
    null,
  ];

  // tentative variable
  String toggleState = "ON";
  String address = "東京都世田谷区北沢３丁目２３−１４";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("予定作成&編集"),
      ),
      body: Column(
        children: [
          Container(
            alignment: const Alignment(0.0, 0.0),
            height: 100,
            child: TextFormField(
              style: const TextStyle(
                fontSize: 30,
              ),
              decoration: InputDecoration(
                hintText: '予定名',
                contentPadding: const EdgeInsets.all(20),
                fillColor: Colors.green[100],
                filled: true,
                isDense: true,
                prefixIcon: Container(
                  margin: const EdgeInsets.all(20),
                  child: const Icon(
                    Icons.event_available,
                    size: 40,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(child: ListView.separated(
            itemCount: tileName.length,
            itemBuilder: (BuildContext context, int index) {
              return SubListItem(
                title: tileName[index],
                leading: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 44,
                    minWidth: 34,
                    maxHeight: 64,
                    maxWidth: 54),
                  child: iconName[index],
                ),
                route: routeName[index],
                toggle: tileName[index] == '出席' ? toggleState : '',
                address: tileName[index] == '目的地:' ? address : '',
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
            ),
          )
        ],
      )
    );
  }
}


class SubListItem extends StatelessWidget {
  final String title;
  final Widget leading;
  final String route;
  final String toggle;
  final String address;

  SubListItem({required this.title, required this.leading, required this.route, required this.toggle, required this.address});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(title),
          const SizedBox(
            width: 10,
          ),
          Text(address),
        ],
      ),
      leading: leading,
      onTap: () => {
        Navigator.of(context).pushNamed(route)
      },
      // onLongPress: () => {},
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            toggle,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          const Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}