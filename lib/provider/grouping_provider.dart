import 'dart:math';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/grouped_participants_list.dart';

import '../model/entity/participant.dart';
import '../model/entity/participants_list.dart';


class GroupedParticipantsListNotifier extends StateNotifier<GroupedParticipantsList> {
  GroupedParticipantsListNotifier() : super(const GroupedParticipantsList(groupedParticipantsList: []));

  void grouping(int num, List<Participant> participants) {
    List<Participant> shuffledList = [...participants];
    shuffledList.shuffle();
    final length = shuffledList.length;
    List<int> groupNumList = [];
    for(var i = 0; i < length ~/ num; i++) {
      groupNumList.add(num);
    }
    var rem = length % num;
    if(rem != 0) {
      var idx = 0;
      while(true) {
        if(groupNumList.reduce(max) - rem < 2) {
          groupNumList.add(rem);
          break;
        }
        groupNumList[idx % length]--;
        rem++;
        idx++;
      }
    }
    List<ParticipantsList> groupedParticipantsList = [];

    var sum = 0;
    for (var i = 0; i < groupNumList.length; i++) {
      final end = sum + groupNumList[i];
      final element = ParticipantsList(groupId: i, participants: [for(final participant in shuffledList.sublist(sum, end)) participant.copyWith(group_id: i)]);
      sum = end;
      groupedParticipantsList.add(element);
    }

    state = state.copyWith(groupedParticipantsList: groupedParticipantsList);
  }

  void sync(List<Participant> participants){
    List<List<Participant>> temp_list = [];
    for(final participant in participants){
      if(participant.group_id ==null){
        throw Exception("Not have Group!");
      }
      while(temp_list.length <= participant.group_id!){
        temp_list.add([]);
      }
      temp_list[participant.group_id!].add(participant);
    }
    state = state.copyWith(groupedParticipantsList: [for(var i = 0; i < temp_list.length; i++) ParticipantsList(groupId: i, participants: temp_list[i])]);
  }
}

final groupingProvider = StateNotifierProvider<GroupedParticipantsListNotifier
, GroupedParticipantsList>((ref) {
  return GroupedParticipantsListNotifier();
});