import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/widget/dialog/event_detail_dialog.dart';
import 'package:schetify/widget/dialog/splitting_the_cost_dialog.dart';

import '../../../provider/event_update_provider.dart';
import '../../dialog/splitting_the_cost_dialog.dart';

class SubListItem extends HookConsumerWidget {
  final String title;
  final Widget leading;
  final String route;
  final String toggle;
  final String address;
  final int? eventId;

  const SubListItem({required this.title, required this.leading, required this.route, required this.toggle, required this.address, required this.eventId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(eventUpdateProvider.notifier);
    final detail = ref.watch(eventUpdateProvider);

    SnackBar alertSnackBar = SnackBar(
      content: const Text("URLをクリップボードにコピーしました。"),
      action: SnackBarAction(
        label: '閉じる',
        onPressed: (){
          //閉じるが押された時行いたい処理
        },
      ),
    );

    Future<void> cripUrl() async {
      final data = ClipboardData(text: "schetify://events/?id=${detail.event.id}&name=${detail.event.name}");
      await Clipboard.setData(data)
        .then((_) => ScaffoldMessenger.of(context).showSnackBar(alertSnackBar));
    }
    return ListTile(
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(title),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Text(
              address,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
      leading: leading,
      onTap: () => {
        if(route == "detail"){
          showDialog(
            context: context,
            builder: (_) => const SimpleDialog(
              title: Text("イベント詳細"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
                children: <Widget>[
                  EventDetailDialog()
                ],
              )
            )
        }
        else if(route == "cost"){
          showDialog(
              context: context,
              builder: (_) => const SimpleDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                ),
                title: Text("割り勘設定"),
                children: <Widget>[
                  SplittingTheCostDialog()
                ],
              )
          )
        }
        else if(route == "url") {
          cripUrl()
        }
        else{
          Navigator.of(context).pushNamed(route)
            .then((value) {
              notifier.getEventInformation(eventId!);
          })
        }
      },
      // onLongPress: () => {},
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            toggle,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          const Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}