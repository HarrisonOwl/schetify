import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/event_detail_provider.dart';

class ParticipantsListDialog extends HookConsumerWidget {

  const ParticipantsListDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final detail = ref.watch(eventDetailProvider);

    return SizedBox(
      width: 200,
      height: 400,
      child: ListView.separated(
        itemCount: detail.participants.length,
        itemBuilder: (BuildContext context, int index) {
          final participant = detail.participants[index];
          return Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              children: [
                Expanded(
                  flex: 20,
                  child: Container(
                      margin: const EdgeInsets.all(10),
                      child: const Icon(
                        Icons.person,
                        size: 30,
                      )
                  ),
                ),
                Expanded(
                  flex: 80,
                  child: Text(participant.username,
                    style: const TextStyle(
                      fontFamily: 'SFProDisplay',
                      color: Color(0xff000000),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0.0075,
                    ),
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.visible,
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
    }
  }