import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/widget/dialog/event_detail_dialog.dart';

import '../../../provider/attend_provider.dart';

class SubListItem extends HookConsumerWidget {
  final String title;
  final Widget leading;
  final String route;
  final String toggle;
  final String address;

  SubListItem({required this.title, required this.leading, required this.route, required this.toggle, required this.address});

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
        }else if(route == "changeToggle"){
          if(toggle == 'OFF'){
            ref.read(attendProvider.notifier)
                .changeAttend('ON'),
          }else{
            ref.read(attendProvider.notifier)
                .changeAttend('OFF'),
          }
        }else{
          Navigator.of(context).pushNamed(route)
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