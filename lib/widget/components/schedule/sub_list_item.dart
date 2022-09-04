import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/widget/dialog/event_detail_dialog.dart';

class SubListItem extends HookConsumerWidget {
  final String title;
  final Widget leading;
  final String route;
  final Consumer toggleConsumer;
  final String address;

  SubListItem({required this.title, required this.leading, required this.route,
    required this.toggleConsumer, required this.address});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                children: <Widget>[
                  EventDetailDialog()
                ],
              )
            )
        }else{
          Navigator.pushNamed(context,route)
        }
      },
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          toggleConsumer,
          const SizedBox(
            width: 50,
          ),
          const Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}