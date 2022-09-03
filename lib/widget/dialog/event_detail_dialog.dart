import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EventDetailDialog extends HookConsumerWidget {

  const EventDetailDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("予定詳細"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const [
            TextField(
              decoration: InputDecoration(
              contentPadding: EdgeInsets.all(30),
                  border: OutlineInputBorder(),
              ),
            )
          ],
        ),
      ),
    );
  }
}