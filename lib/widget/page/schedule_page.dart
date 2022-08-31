import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/schedules_dart_provider.dart';

class SchedulePage extends HookConsumerWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(schedulesDataProvider);

    return Scaffold(
        body: ListView.separated(
          itemCount: data.schedules.length,
          itemBuilder: (BuildContext context, int index) {
            final schedule = data.schedules[index];
            return SubListItem(
              title: schedule.name,
              subTitle: '¥${schedule.date}\n${schedule.type}\n${schedule.name}',
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
          Navigator.of(context).pushNamed("/schedule/new");
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