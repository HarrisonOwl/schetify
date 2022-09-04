import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/number_of_groups.dart';
import 'package:schetify/model/entity/user_name_list.dart';

import '../../model/entity/user_name.dart';



class SeatDistribution extends HookConsumerWidget {
  SeatDistribution({Key? key}) : super(key: key);

  var a = const UserNameList(userNameList: [UserName(name: "a"),UserName(name: "b"),UserName(name: "c"),UserName(name: "d"),UserName(name: "e"),UserName(name: "f")]);
  var numberOfGroups = const NumberOfGroups(number: 3);

  List<dynamic> grouping(NumberOfGroups numberOfGroups) {
    a.userNameList.shuffle();

    final List<dynamic> chunkedItems = [];
    final chunkSize = numberOfGroups.number;

    for (var i = 0; i < a.userNameList.length; i += chunkSize) {
      final isLast = i + chunkSize >= a.userNameList.length;
      final end = isLast ? a.userNameList.length : i + chunkSize;
      chunkedItems.add(a.userNameList.sublist(i, end));
    }

    return chunkedItems;
  }

   List<dynamic> b = [];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("席分け"),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: b.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Text("Group ${index}"),
                      for (var i = 0; i < b[index].length; i++)
                        Text(b[index][i].name),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) => const Divider(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                b = grouping(numberOfGroups);
                log(b);
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
              onChanged: (value) {
                numberOfGroups = NumberOfGroups(number: int.parse(value));
              },
            ),
          ],
        )
    );
  }


}