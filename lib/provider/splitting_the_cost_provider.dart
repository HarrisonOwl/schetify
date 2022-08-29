import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/entity/splitting_the_cost_status.dart';

class SplittingTheCostNotifier extends StateNotifier<SplittingTheCostStatus> {
  SplittingTheCostNotifier() : super(const SplittingTheCostStatus(
      flag: false, money: 0.0, number: 0.0, average: 0.0));

  void changeFlag(bool status) {
    state = state.copyWith(flag: status);
  }

  void changeMoney(double value) {
    state = state.copyWith(money: value);
    debugPrint(state.toString());
  }

  void changeNumber(double value) {
    state = state.copyWith(number: value);
  }

  void changeAverage(double value) {
    state = state.copyWith(average: value);
  }
}

final splittingTheCostProvider = StateNotifierProvider<SplittingTheCostNotifier
,SplittingTheCostStatus>((ref) {
  return SplittingTheCostNotifier();
});