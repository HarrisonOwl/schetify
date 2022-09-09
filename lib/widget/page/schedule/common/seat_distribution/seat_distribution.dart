import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/grouping_provider.dart';
import 'package:schetify/widget/components/seat/group_list_item.dart';

import '../../../../../provider/event_detail_provider.dart';



class SeatDistribution extends HookConsumerWidget {
  const SeatDistribution({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(groupingProvider);
    final eventDetail = ref.watch(eventDetailProvider);

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          if(!eventDetail.loading && (eventDetail.participants.firstWhereOrNull((element) => element.user_id == eventDetail.user_id)?.label ?? 'readonly') != 'readonly')TextButton(
            child: Row(
              children: const [
                Icon(
                  Icons.refresh,
                  color: Colors.white,
                ),
                Text('リセット', style: TextStyle(color: Colors.white),)
              ],
            ),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("/event/seat/new");
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green,
            child: Padding(padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  children: const [
                    Icon(
                      Icons.people,
                      size: 40,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text( '席構成' , style: TextStyle(color: Colors.white, fontSize: 26.0,), textAlign: TextAlign.left),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: provider.groupedParticipantsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GroupListItemComponent(groupName: "Group ${provider.groupedParticipantsList[index].groupId+1}", participants: provider.groupedParticipantsList[index].participants);
                }
            ),
          )
        ],
      ),
    );
  }


}