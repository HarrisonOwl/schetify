import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ScheduleDayStatus{
  final bool isSetStartTime;

  const ScheduleDayStatus({
    required this.isSetStartTime,
  });

  ScheduleDayStatus copyWith({bool? isSetStartTime}) {
    return ScheduleDayStatus(
      isSetStartTime: isSetStartTime ?? this.isSetStartTime,
    );
  }
}

class ScheduleDayNotifier extends StateNotifier<ScheduleDayStatus> {
  ScheduleDayNotifier() : super(const ScheduleDayStatus(
      isSetStartTime: false));

  void changeIsSetStartTime(bool status) {
    state = state.copyWith(isSetStartTime: status);
  }
}

final scheduleDayProvider = StateNotifierProvider<ScheduleDayNotifier
,ScheduleDayStatus>((ref) {
  return ScheduleDayNotifier();
});