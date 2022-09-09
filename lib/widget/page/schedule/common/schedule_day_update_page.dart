import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/schedule_candidate.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:schetify/widget/components/schedule/schedule_day_list_view.dart';
import 'package:schetify/widget/components/schedule/schedule_day_setting_view.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:schetify/provider/schedule_day_provider.dart';
import 'package:schetify/provider/shared_preference_provider.dart';
import 'dart:collection';

import '../../../../provider/event_update_provider.dart';
class ScheduleDayUpdatePage extends StatefulHookConsumerWidget {
  const ScheduleDayUpdatePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => ScheduleDayUpdatePageState();
}

class ScheduleDayUpdatePageState extends ConsumerState<ScheduleDayUpdatePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(scheduleDayProvider);
    final scrollController = ItemScrollController();
    final focusedDay = useState(DateTime.now().add(const Duration(days: 1)));
    final notifier = ref.read(eventUpdateProvider.notifier);
    final detail = ref.watch(eventUpdateProvider);
    final isOpenedScheduleCandidatesPage = useState(ref.watch(sharedPreferencesProvider).isOpenedScheduleCandidatesPage);

    SnackBar alertSnackBar = SnackBar(
      content: const Text('更新に失敗しました。'),
      action: SnackBarAction(
        label: '閉じる',
        onPressed: (){
          //閉じるが押された時行いたい処理
        },
      ),
    );

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (!isOpenedScheduleCandidatesPage.value) {
          showDialog(
            context: context,
            builder: (_) =>
                WillPopScope(
                    onWillPop: () async {
                      ref.read(sharedPreferencesProvider.notifier)
                          .changeIsOpenedScheduleCandidatesPage(true);
                      isOpenedScheduleCandidatesPage.value = true;
                      return true;
                    },
                    child: AlertDialog(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                      ),
                    title: const Text("日程候補編集方法"),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: <Widget>[
                          Column(
                            children: const <Widget>[
                              Text("・画面上部のカレンダーをタップすることで日程候補の追加\n"
                                  "・追加したリストを画面下部のリストで確認\n"
                                  "・リストの右側の編集アイコンを選択することで日程候補の日時を変更\n"
                                  "・リスト要素をスワイプすることで削除したい日程候補を削除\n"
                                  "・右上のアイコンをタップすると保存")
                            ],
                          ),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          side: const BorderSide(),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('編集を開始する'),
                      )
                    ],
                  )
                )
          );
        }
      });
      return null;
    }, const []);

      int getHashCode(DateTime key) {
        return key.day * 1000000 + key.month * 10000 + key.year;
      }

      LinkedHashMap<DateTime, List<String>> getEvents() {
        final map = <DateTime, List<String>>{};
        for (var period in detail.scheduleCandidates) {
          if(map.containsKey(period.start_at)) {
            map[period.start_at]?.add(period.toString());
          }
          else {
            map[period.start_at] = [period.toString()];
          }
        }
        return LinkedHashMap<DateTime, List<String>>(
          equals: isSameDay,
          hashCode: getHashCode,
        )..addAll(map);
      }

      List getEventForDay(DateTime day) {
        return getEvents()[day] ?? [];
      }

      void scrollTo(ScheduleCandidate newPeriod) {
        var index = detail.scheduleCandidates.toList().indexOf(newPeriod);
        scrollController.scrollTo(
            index: index,
            duration: const Duration(milliseconds: 50),
            curve: Curves.easeInOutCubic
        );
      }

      Future<void> setPeriod(DateTime selectedDay) async {
        TimeOfDay initialStartTimeOfDay = const TimeOfDay(hour: 19, minute: 0);
        TimeOfDay initialEndTimeOfDay = const TimeOfDay(hour: 20, minute: 0);
        final startTimeOfDay = await showTimePicker(
            context: context,
            initialTime: initialStartTimeOfDay,
            helpText: "開始時間を入力してください"
        );
        if(startTimeOfDay != null) {
          final startTime = DateTime(
              selectedDay.year,
              selectedDay.month,
              selectedDay.day,
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
                selectedDay.year,
                selectedDay.month,
                selectedDay.day,
                endTimeOfDay.hour,
                endTimeOfDay.minute
            );
            final newPeriod = ScheduleCandidate(
              id: null,
              event_id: detail.event.id,
              start_at: startTime,
              end_at: endTime,
              voters: [],
            );
            notifier.addPeriod(newPeriod);
            if(detail.scheduleCandidates.length > 1) {
              // TODO 非同期関数でもスクロール処理が動くようにする
              // await scrollTo(newPeriod);
            }
          }
        }
      }

      void setPeriodCollectively(DateTime selectedDay) {
        final startTime = DateTime(
            selectedDay.year,
            selectedDay.month,
            selectedDay.day,
            provider.defaultStartTimeOfDay.hour,
            provider.defaultStartTimeOfDay.minute
        );
        final endTime = DateTime(
            selectedDay.year,
            selectedDay.month,
            selectedDay.day,
            provider.defaultEndTimeOfDay.hour,
            provider.defaultEndTimeOfDay.minute
        );
        final newPeriod = ScheduleCandidate(
            id: null,
            event_id: detail.event.id,
            start_at: startTime,
            end_at: endTime,
            voters: [],
        );
        notifier.addPeriod(newPeriod);
        if(detail.scheduleCandidates.length > 1) {
          scrollTo(newPeriod);
        }
      }

      return Scaffold(
          appBar: AppBar(
            title: const Text("日程編集"),
            actions: [
              IconButton(
                  onPressed: () async {
                    await notifier.updateScheduleCandidates()
                        .then((_){
                          Navigator.pop(context);
                    }).onError((error, stackTrace) {
                      ScaffoldMessenger.of(context).showSnackBar(alertSnackBar);
                    });
                  },
                  icon: const Icon(Icons.save),
              )
            ],
          ),
          body: Column(
              children: <Widget>[
                Expanded(
                  flex: 22, // 割合
                  child: TableCalendar(
                      locale: 'ja_JP',
                      firstDay: DateTime.now().add(const Duration(days: 1)),
                      lastDay: DateTime.now().add(const Duration(days: 365)),
                      selectedDayPredicate: (day) => isSameDay(focusedDay.value, day),
                      eventLoader: (day) =>  getEventForDay(day),
                      focusedDay: focusedDay.value,
                      onDaySelected: (selectedDay, newFocusedDay) async {
                        focusedDay.value = newFocusedDay;
                        provider.isSetPeriodCollectively ? setPeriodCollectively(selectedDay) : await setPeriod(selectedDay);
                      },
                      calendarFormat: CalendarFormat.twoWeeks,
                      headerStyle: const HeaderStyle(
                          formatButtonVisible: false
                      )
                  ),
                ),
                Container(width: double.infinity, height: 1, color: Colors.black12,),
                Expanded(
                    flex: provider.isSetPeriodCollectively ? 12 : 6, // 割合
                    child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: ScheduleDaySettingView(provider: provider, ref: ref,)
                    )
                ),
                Container(width: double.infinity, height: 1, color: Colors.black12,),
                Expanded(
                  flex: provider.isSetPeriodCollectively ? 52 : 58, // 割合
                  child: ScheduleDayListView(scheduleCandidates: detail.scheduleCandidates, scrollController: scrollController, eventId: detail.event.id,),
                ),
              ]
          )
      );
    }
}
