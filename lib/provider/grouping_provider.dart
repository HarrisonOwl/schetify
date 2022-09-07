import 'dart:math';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/entity/grouped_user_list.dart';
import '../model/entity/user_name.dart';
import '../model/entity/user_name_list.dart';

class GroupedUserListNotifier extends StateNotifier<GroupedUserList> {
  GroupedUserListNotifier() : super(const GroupedUserList(groupedUserList: []));

  final a = const UserNameList(userNameList: [UserName(name: "a"),UserName(name: "b"),UserName(name: "c"),UserName(name: "d"),UserName(name: "e"),UserName(name: "f"),UserName(name: "g"),UserName(name: "h"),UserName(name: "i"),UserName(name: "j"),UserName(name: "k")]);

  void grouping(int num) {
    List<UserName> shuffledList = [...a.userNameList];
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
    List<UserNameList> groupedUserList = [];

    var sum = 0;
    for (var i = 0; i < groupNumList.length; i++) {
      final end = sum + groupNumList[i];
      final element = UserNameList(userNameList: shuffledList.sublist(sum, end));
      sum = end;
      groupedUserList.add(element);
    }

    // return chunkedItems;
    state = state.copyWith(groupedUserList: groupedUserList);
  }
}

final groupingProvider = StateNotifierProvider<GroupedUserListNotifier
, GroupedUserList>((ref) {
  return GroupedUserListNotifier();
});