import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/widget/components/schedule/schedule_day_list_tile.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:schetify/model/entity/schedule_period.dart';
import 'package:schetify/provider/schedule_day_provider.dart';

class ScheduleDayListView extends StatelessWidget {
  ScheduleDayListView({Key? key, required this.periodList, required this.scrollController, required this.ref}) : super(key: key);

  final SplayTreeSet<SchedulePeriod> periodList;
  final ItemScrollController scrollController;
  final ItemPositionsListener positionsListener = ItemPositionsListener.create();
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemBuilder: (context, index) {
        return Dismissible(
          key: UniqueKey(),
          onDismissed: (direction) => ref.read(scheduleDayProvider.notifier)
              .removePeriod(periodList.elementAt(index)),
          background: Container(
            color: Colors.red,
            child: const Icon(Icons.delete, color: Colors.white),
          ),
          child: Column(
            children: [
              Container( // SizedBoxにした方がいいというWarningが出るが、パッケージの挙動がおかしくなるのでContainerのままにした
                height: 30,
                child: ScheduleDayListTile(period: periodList.elementAt(index)),
              ),
              const Divider()
            ],
          ),
        );
      },
      itemScrollController: scrollController,
      itemPositionsListener: positionsListener,
      itemCount: periodList.length);
  }
}