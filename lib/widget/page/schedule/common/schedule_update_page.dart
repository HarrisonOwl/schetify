import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/attend_provider.dart';
import 'package:schetify/provider/settings_label_provider.dart';
import 'package:schetify/provider/splitting_the_cost_provider.dart';
import '../../../../model/entity/schedule_update_page_util.dart';
import '../../../components/schedule/sub_list_item.dart';

class ScheduleUpdatePage extends HookConsumerWidget {
  ScheduleUpdatePage({Key? key}) : super(key: key);

  final List<ScheduleUpdatePageUtil> util = <ScheduleUpdatePageUtil>[
    ScheduleUpdatePageUtil("予定詳細", "", const Icon(Icons.details),
        Consumer(builder: (context, ref, _) {
          return const Text("");
        })),
    ScheduleUpdatePageUtil("日にち設定", "/schedule/new/day", const Icon(Icons.calendar_today),
        Consumer(builder: (context, ref, _) {
          return const Text("");
        })),
    ScheduleUpdatePageUtil("席分け設定", "/schedule/new/seat", const Icon(Icons.table_bar),
        Consumer(builder: (context, ref, _) {
          return const Text("");
        })),
    ScheduleUpdatePageUtil("ラベル設定", "/schedule/new/label", const Icon(Icons.label),
        Consumer(builder: (context, ref, _) {
          var flag = ref.read(settingsLabelProvider);
          if(flag.flag){
            return const Text("ON");
          }else{
            return const Text("OFF");
          }
        })),
    ScheduleUpdatePageUtil("割り勘設定", "/schedule/new/cost", const Icon(Icons.money),
        Consumer(builder: (context, ref, _) {
          var flag = ref.read(splittingTheCostProvider);
          if(flag.flag){
            return const Text("ON");
          }else{
            return const Text("OFF");
          }
        })),
    ScheduleUpdatePageUtil("目的地:", "/schedule/new/destination", const Icon(Icons.room),
        Consumer(builder: (context, ref, _) {
          return const Text("");
        })),
    ScheduleUpdatePageUtil("アンケート設定", "/schedule/new/questionnaire", const Icon(Icons.feed),
        Consumer(builder: (context, ref, _) {
          return const Text("");
        })),
    ScheduleUpdatePageUtil("出席", "", const Icon(Icons.confirmation_num),
      Consumer(builder: (context, ref, _) {
        var flag = ref.read(attendProvider);
        if(flag.attend){
          return const Text("ON");
        }else{
          return const Text("OFF");
        }
      })),
    ScheduleUpdatePageUtil("シェア(URL)", "", const Icon(Icons.add_link),
        Consumer(builder: (context, ref, _) {
          return const Text("");
        })),
  ];

  // tentative variable
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
            itemCount: util.length,
            itemBuilder: (BuildContext context, int index) {
              return SubListItem(
                title: util[index].tileName,
                leading: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 44,
                    minWidth: 34,
                    maxHeight: 64,
                    maxWidth: 54),
                  child: util[index].iconName,
                ),
                route: util[index].routeName,
                toggleConsumer: util[index].toggleConsumer,
                address: util[index].tileName == '目的地:' ? address : '',
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