import 'package:flutter/material.dart';
import 'package:schetify/widget/page/schedule/common/schedule_day_list_tile.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ScheduleDayListView extends StatelessWidget {
  ScheduleDayListView({Key? key, required this.dayList, required this.scrollController}) : super(key: key);

  final List<DateTime> dayList;
  final ItemScrollController scrollController;
  final ItemPositionsListener positionsListener = ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container( // SizedBoxにした方がいいというWarningが出るが、パッケージの挙動がおかしくなるのでContainerのままにした
              height: 30,
              child: ScheduleDayListTile(day: dayList[index]),
            ),
            const Divider()
          ],
        );
      },
      itemScrollController: scrollController,
      itemPositionsListener: positionsListener,
      itemCount: dayList.length);
  }
}