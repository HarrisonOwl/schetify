import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/widget/dialog/settings_user_dialog.dart';

import '../../../../../provider/event_update_provider.dart';

class SettingsLabel extends HookConsumerWidget {

  SettingsLabel({Key? key}) : super(key: key);
  final Map<String, TextSpan> labels = {
    "readonly": TextSpan(
        text: '一般ユーザー',
        style: TextStyle(
            fontSize: 12.0,
            color: Colors.black,
            background: Paint()
              ..strokeWidth = 17.0
              ..color = Colors.cyanAccent
              ..style = PaintingStyle.stroke
              ..strokeJoin = StrokeJoin.round)),
    "editor": TextSpan(
        text: '管理者',
        style: TextStyle(
            fontSize: 12.0,
            color: Colors.white,
            background: Paint()
              ..strokeWidth = 17.0
              ..color = Colors.green
              ..style = PaintingStyle.stroke
              ..strokeJoin = StrokeJoin.round)),
    "owner": TextSpan(
        text: '主催者',
        style: TextStyle(
            fontSize: 12.0,
            color: Colors.black,
            background: Paint()
              ..strokeWidth = 17.0
              ..color = Colors.yellow
              ..style = PaintingStyle.stroke
              ..strokeJoin = StrokeJoin.round))
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final detail = ref.watch(eventUpdateProvider);


    return Scaffold(
      appBar: AppBar(
        title: const Text("ラベル設定"),
      ),
      body: detail.loading ? Center(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3),
          child: const CircularProgressIndicator(
            color: Colors.green,
          ),
        ),
      ) : Container(
              padding: const EdgeInsets.all(4),
              child: ListView.builder(
                itemCount: detail.participants.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 50,
                    child: ListTile(
                      title: Text(detail.participants[index].username),
                      leading: const Icon(Icons.person),
                      trailing: RichText(text: labels[detail.participants[index].label]!,),
                      onTap: () {
                        if(detail.participants[index].label != 'owner') {
                          showDialog(
                              context: context,
                              builder: (_) => SimpleDialog(
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                                ),
                                title: Row(children: [
                                  const Icon(Icons.person),
                                  const SizedBox(width: 10),
                                  Text(detail.participants[index].username)
                                ],),
                                children: <Widget>[
                                  SettingsUserDialog(index: index)
                                ],
                              )
                          );
                        }
                      },
                    )
                  );
                },
              ),
            ),
        );
  }
}