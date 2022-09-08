import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/grouping_provider.dart';



class SeatDistribution extends HookConsumerWidget {
  const SeatDistribution({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final numberOfGroups = useState(0);
    final provider = ref.watch(groupingProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text("席分け"),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: provider.groupedUserList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Text("Group $index"),
                      for (var i = 0; i < provider.groupedUserList[index].userNameList.length; i++)
                        Text(provider.groupedUserList[index].userNameList[i].name),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) => const Divider(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(groupingProvider.notifier)
                    .grouping(numberOfGroups.value);
              },
              child: const Text('シャッフル'),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              style: const TextStyle(
                fontSize: 30,
              ),
              decoration: const InputDecoration(
                hintText: '人数',
                contentPadding: EdgeInsets.all(20),
              ),
              initialValue: numberOfGroups.value.toString(),
              onChanged: (value) {
                numberOfGroups.value = int.parse(value);
              },
            ),
          ],
        )
    );
  }


}