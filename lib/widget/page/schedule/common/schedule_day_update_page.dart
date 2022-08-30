import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:schetify/widget/components/schedule/schedule_day_list_view.dart';
import 'package:schetify/widget/components/schedule/schedule_day_setting_view.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:schetify/provider/schedule_day_provider.dart';
import 'package:schetify/model/entity/schedule_period.dart';
import 'dart:collection';

class ScheduleDayUpdatePage extends HookConsumerWidget {
  const ScheduleDayUpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(scheduleDayProvider);
    final scrollController = ItemScrollController();
    final focusedDay = useState(DateTime.now().add(const Duration(days: 1)));
    final notifier = ref.read(scheduleDayProvider.notifier);

    int getHashCode(DateTime key) {
      return key.day * 1000000 + key.month * 10000 + key.year;
    }

    LinkedHashMap<DateTime, List<String>> getEvents() {
      final map = <DateTime, List<String>>{};
      for (var period in provider.periodList) {
        if(map.containsKey(period.startTime)) {
          map[period.startTime]?.add(period.toString());
        }
        else {
          map[period.startTime] = [period.toString()];
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

    Future<void> scrollTo(SchedulePeriod newPeriod) async {
      // TODO 非同期関数でもスクロール処理が動くようにする
      // var index = provider.periodList.indexOf(newPeriod);
      // scrollController.scrollTo(
      //     index: index,
      //     duration: const Duration(milliseconds: 50),
      //     curve: Curves.easeInOutCubic
      // );
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
          final newPeriod = SchedulePeriod(
              startTime: startTime,
              endTime: endTime
          );
          notifier.changeDayList([...provider.periodList, newPeriod]);
          if(provider.periodList.length > 1) {
            await scrollTo(newPeriod);
          }
        }
      }
    }

    Future<void> setPeriodCollectively(DateTime selectedDay) async {
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
      final newPeriod = SchedulePeriod(
          startTime: startTime,
          endTime: endTime
      );
      notifier.changeDayList([...provider.periodList, newPeriod]);
      if(provider.periodList.length > 1) {
        await scrollTo(newPeriod);
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text("日程編集"),
        ),
        body: Column(
            children: <Widget>[
              Expanded(
                flex: 35, // 割合
                child: TableCalendar(
                  locale: 'ja_JP',
                  firstDay: DateTime.now().add(const Duration(days: 1)),
                  lastDay: DateTime.now().add(const Duration(days: 365)),
                  selectedDayPredicate: (day) => isSameDay(focusedDay.value, day),
                  eventLoader: (day) =>  getEventForDay(day),
                  focusedDay: focusedDay.value,
                  onDaySelected: (selectedDay, newFocusedDay) async {
                    focusedDay.value = newFocusedDay;
                    provider.isSetPeriodCollectively ? await setPeriodCollectively(selectedDay) : await setPeriod(selectedDay);
                  },
                  calendarFormat: CalendarFormat.twoWeeks,
                  headerStyle: const HeaderStyle(
                    formatButtonVisible: false
                  )
                ),
              ),
              Expanded(
                flex: provider.isSetPeriodCollectively ? 17 : 9, // 割合
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: ScheduleDaySettingView(provider: provider, ref: ref,)
                )
              ),
              Expanded(
                flex: provider.isSetPeriodCollectively ? 48 : 56, // 割合
                child: ScheduleDayListView(periodList: provider.periodList, scrollController: scrollController,),
              ),
            ]
        )
    );
  }
}
