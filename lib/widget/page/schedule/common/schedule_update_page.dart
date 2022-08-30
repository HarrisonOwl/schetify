import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ScheduleUpdatePage extends HookConsumerWidget {
  ScheduleUpdatePage({Key? key}) : super(key: key);
  final List<String> buttonName = <String>['A', 'B', 'C'];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("予定作成&編集"),
      ),
      body: Align(
          alignment: Alignment.bottomCenter,
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: buttonName.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/");
                    },
                    child: Text('Entry ${buttonName[index]}')
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          )
      )
      // body: ListView.separated(
      //   padding: const EdgeInsets.all(8),
      //   itemCount: buttonName.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return Container(
      //         height: 50,
      //         // padding: const EdgeInsets.all(8.0), //マージン
      //         child: ElevatedButton(
      //             onPressed: () {
      //               Navigator.of(context).pushNamed("/");
      //             },
      //             child: Text('Entry ${buttonName[index]}')
      //         ),
      //     );
      //   },
      //   separatorBuilder: (BuildContext context, int index) => const Divider(),
      // )
    );
  }
}



// Padding(
//   padding: const EdgeInsets.all(8.0), //マージン
//   child: SizedBox(
//       height: 50,
//       width: 200,
//       child: ElevatedButton(
//           onPressed: () {
//             Navigator.of(context).pushNamed("/");
//           },
//           child: Text('Log In')
//       )
//   ),
// ),