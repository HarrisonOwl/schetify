import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/entity/grouped_user_list.dart';
import '../model/entity/number_of_groups.dart';
import '../model/entity/user_name.dart';
import '../model/entity/user_name_list.dart';

class GroupedUserListNotifier extends StateNotifier<GroupedUserList> {
  GroupedUserListNotifier() : super(const GroupedUserList(groupedUserList: []));

  final a = const UserNameList(userNameList: [UserName(name: "a"),UserName(name: "b"),UserName(name: "c"),UserName(name: "d"),UserName(name: "e"),UserName(name: "f")]);

  void grouping(int numberOfGroups) {
    List<UserName> shuffled_list = [...a.userNameList];
    shuffled_list.shuffle();

    List<UserNameList> groupedUserList = [];
    final chunkSize = numberOfGroups;

    for (var i = 0; i < shuffled_list.length; i += chunkSize) {
      final isLast = i + chunkSize >= shuffled_list.length;
      final end = isLast ? shuffled_list.length : i + chunkSize;
      final element = UserNameList(userNameList: shuffled_list.sublist(i, end));
      groupedUserList.add(element);
    }

    // return chunkedItems;
    state = state.copyWith(groupedUserList: groupedUserList);
  }

  // void changeNumberOfGroups(NumberOfGroups(number: 0)) {
  //   state = state.copyWith()
  // }
}

final groupingProvider = StateNotifierProvider<GroupedUserListNotifier
, GroupedUserList>((ref) {
  return GroupedUserListNotifier();
});