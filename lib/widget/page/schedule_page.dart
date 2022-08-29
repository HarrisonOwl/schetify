import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/schedules_dart_provider.dart';

class SchedulePage extends HookConsumerWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(schedulesDataProvider);

    return Scaffold(
        body: ListView.builder(
          itemCount: data.schedules.length,
          itemBuilder: (BuildContext context, int index) {
            final schedule = data.schedules[index];
            return Column(
              children: [
                Text("date:${schedule.date}"),
                Text("type:${schedule.type}"),
                Text("name:${schedule.name}"),
              ],
            );
          },
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