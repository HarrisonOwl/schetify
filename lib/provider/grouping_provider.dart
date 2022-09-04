import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/entity/number_of_groups.dart';
import '../model/entity/user_name.dart';
import '../model/entity/user_name_list.dart';

class NumberOfGroupsNotifier extends StateNotifier<NumberOfGroups> {
  NumberOfGroupsNotifier() : super(const NumberOfGroups(number: 0));

  var a = const UserNameList(userNameList: [UserName(name: "a"),UserName(name: "b"),UserName(name: "c"),UserName(name: "d"),UserName(name: "e"),UserName(name: "f")]);

  void grouping(NumberOfGroups numberOfGroups) {
    a.userNameList.shuffle();

    List<UserName> chunkedItems = [];
    final chunkSize = numberOfGroups.number;

    for (var i = 0; i < a.userNameList.length; i += chunkSize) {
      final isLast = i + chunkSize >= a.userNameList.length;
      final end = isLast ? a.userNameList.length : i + chunkSize;
      chunkedItems += a.userNameList.sublist(i, end);
    }
    
    state = state.copyWith();
  }
}

final groupingProvider = StateNotifierProvider<NumberOfGroupsNotifier
, NumberOfGroups>((ref) {
  return NumberOfGroupsNotifier();
});