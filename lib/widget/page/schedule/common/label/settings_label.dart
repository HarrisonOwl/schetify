import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/widget/dialog/settings_user_dialog.dart';

import '../../../../../provider/event_update_provider.dart';

class SettingsLabel extends HookConsumerWidget {

  const SettingsLabel({Key? key}) : super(key: key);

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
                      trailing: Text(
                          detail.participants[index].label,
                          textAlign: TextAlign.right),
                      onTap: () {
                        if(detail.participants[index].label != 'owner') {
                          showDialog(
                              context: context,
                              builder: (_) => SimpleDialog(
                                title: const Text("ラベル設定"),
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