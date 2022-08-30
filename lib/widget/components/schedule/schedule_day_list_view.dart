import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:schetify/widget/components/schedule/schedule_day_list_tile.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:schetify/model/entity/schedule_period.dart';

class ScheduleDayListView extends StatelessWidget {
  ScheduleDayListView({Key? key, required this.periodList, required this.scrollController}) : super(key: key);

  final SplayTreeSet<SchedulePeriod> periodList;
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
              child: ScheduleDayListTile(period: periodList.elementAt(index)),
            ),
            const Divider()
          ],
        );
      },
      itemScrollController: scrollController,
      itemPositionsListener: positionsListener,
      itemCount: periodList.length);
  }
}