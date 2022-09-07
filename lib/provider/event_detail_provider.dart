

import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/event.dart';
import 'package:schetify/model/entity/event_detail_state.dart';
import 'package:schetify/model/entity/schedule_candidate.dart';
import 'package:schetify/model/repository/test_repository.dart';

class EventDetailNotifier extends StateNotifier<EventDetailState> {
  EventDetailNotifier() : super(EventDetailState(
      event: const Event(
          id: null,
          name: null,
          description: null,
          start_at: null,
          end_at: null,
          img_url: null,
          location_name: null,
          location_address: null,
          location_latitude: null,
          location_longitude: null,
          group_num: null,
          cost: null,
          cost_type: null,
          questionare_url: null
      ),
      scheduleCandidates: SplayTreeSet<ScheduleCandidate>((a, b) => a.getText().compareTo(b.getText())),
      participants: []
  ));

  final TestRepository testService = TestRepository();

  Future<void> getEventInformation(int id) async {
    try{
      await Future.delayed(const Duration(seconds: 1));
      final event = await testService.getEvent(id);
      final participants = await testService.getParticipants(id);
      final candidates = await testService.getScheduleCandidates(id);
      state = state.copyWith(event: event, participants: participants, scheduleCandidates: candidates);
    }catch(e){
      debugPrint(e.toString());
    }
  }
}

final eventDetailProvider = StateNotifierProvider<EventDetailNotifier
,EventDetailState>((ref) {
  return EventDetailNotifier();
});