import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:schetify/widget/page/schedule/common/schedule_day_list_view.dart';
import 'package:collection/src/iterable_extensions.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:schetify/provider/schedule_day_provider.dart';

class ScheduleDayUpdatePage extends HookConsumerWidget {
  const ScheduleDayUpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dayList = useState(<DateTime>[]);
    var scrollController = ItemScrollController();
    var focusedDay = useState(DateTime.now().add(const Duration(days: 1)));
    final provider = ref.watch(scheduleDayProvider);
    var isSetStartTime = useState(provider.isSetStartTime);

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
                  focusedDay: focusedDay.value,
                  onDaySelected: (selectedDay, newFocusedDay) {
                    focusedDay.value = newFocusedDay;
                    dayList.value = [...dayList.value, selectedDay].sorted();
                    var index = dayList.value.indexOf(selectedDay);
                    if(index != 0) {
                      scrollController.scrollTo(
                          index: index,
                          duration: const Duration(milliseconds: 50),
                          curve: Curves.easeInOutCubic
                      );
                    }
                  },
                  calendarFormat: CalendarFormat.twoWeeks,
                  headerStyle: const HeaderStyle(
                    formatButtonVisible: false
                  )
                ),
              ),
              Expanded(
                flex: 5, // 割合
                child: Padding(
                  padding: EdgeInsets.only(left: 40.0, right: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text('イベント開始時間の設定'),
                      // SwitchListTile(
                      //     value: isSetStartTime.value,
                      //     onChanged: (bool value) => {
                      //       isSetStartTime.value = value
                      //     }
                      //   )
                    ],
                  ),
                )
              ),
              Expanded(
                flex: 60, // 割合
                child: ScheduleDayListView(dayList: dayList.value, scrollController: scrollController,),
              ),
            ]
        )
    );
  }
}