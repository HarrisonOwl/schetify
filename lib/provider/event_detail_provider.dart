

import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/event.dart';
import 'package:schetify/model/entity/event_detail_state.dart';
import 'package:schetify/model/entity/schedule_candidate.dart';

import '../model/repository/event_repository.dart';

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
          questionnaire_url: null
      ),
      scheduleCandidates: SplayTreeSet<ScheduleCandidate>((a, b) => a.getText().compareTo(b.getText())),
      participants: [],
      loading: true,
      user_id: ''
  ));

  final EventRepository eventService = EventRepository();

  void changeLoading(bool loading) {
    state = state.copyWith(loading: loading);
  }

  void newEvent(Event event){
    state = state.copyWith(loading: false, event: event);
  }

  Future<void> getEventInformation(int id) async {
    try{
      state = state.copyWith(loading: true);
      final newState = await eventService.getEventInformation(id);
      state = state.copyWith(
        event: newState.event,
        participants: newState.participants,
        scheduleCandidates: newState.scheduleCandidates,
        loading: false,
        user_id: newState.user_id,
      );
    }catch(e){
      debugPrint(e.toString());
    }
  }

  Future<void> updateSchedule(DateTime startAt, DateTime endAt) async{
    final data = {
      'start_at': startAt.toString(),
      'end_at': endAt.toString(),
    };
    await eventService.updateEvent(state.event.id!, data);
  }
}

final eventDetailProvider = StateNotifierProvider<EventDetailNotifier
,EventDetailState>((ref) {
  return EventDetailNotifier();
});