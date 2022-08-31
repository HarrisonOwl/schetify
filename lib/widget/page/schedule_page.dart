import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../provider/schedule_list_provider.dart';

class SchedulePage extends HookConsumerWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(scheduleListProvider);

    return Scaffold(
        body: ListView.separated(
          itemCount: data.scheduleList.length,
          itemBuilder: (BuildContext context, int index) {
            final schedule = data.scheduleList[index];
            return SubListItem(
              title: schedule.scheduleTitle,
              subTitle: schedule.scheduleDescription,
              leading: ConstrainedBox(
                  constraints: const BoxConstraints(
                      minHeight: 44,
                      minWidth: 34,
                      maxHeight: 64,
                      maxWidth: 54),
                  child: const Icon(Icons.event)),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pushNamed("/schedule/new/label");
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class SubListItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final Widget leading;
  // final Color tileColor;

  SubListItem({required this.title, required this.subTitle, required this.leading});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      leading: leading,
      onTap: () => {},
      onLongPress: () => {},
      trailing: Icon(Icons.more_vert),
    );
  }
}