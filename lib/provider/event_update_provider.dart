

import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/event.dart';
import 'package:schetify/model/entity/schedule_candidate.dart';
import 'package:schetify/model/repository/test_repository.dart';

import '../model/entity/event_update_state.dart';
import '../model/entity/participant.dart';
import '../model/repository/event_repository.dart';

class EventUpdateNotifier extends StateNotifier<EventUpdateState> {
  EventUpdateNotifier() : super(EventUpdateState(
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

  Future<void> getEventInformation(int id) async {
    try{
      state = state.copyWith(loading: true);
      final newState = await eventService.getEventInformation(id);
      state = newState;
    }catch(e){
      debugPrint(e.toString());
    }
  }

  Future<void> initialize() async {
    try{
      state = state.copyWith(event: const Event(
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
          participants: [],
          scheduleCandidates: SplayTreeSet<ScheduleCandidate>((a, b) => a.getText().compareTo(b.getText()))
      );
    }catch(e){
      debugPrint(e.toString());
    }
  }

  void changeName(String? name) {
    final event = state.event.copyWith(name: name);
    state = state.copyWith(event: event);
  }

  void changeDescription(String? description) {
    final event = state.event.copyWith(description: description);
    state = state.copyWith(event: event);
  }

  Future<void> updateName(String? name) async{
    final data = {
      'name': name
    };
    if(name != null && name != '') {
      await eventService.updateEvent(state.event.id!, data);
    }
    else {
      throw Exception('invalid input');
    }
  }

  Future<void> updateDescription(String? description) async{
    final data = {
      'description': description
    };
    await eventService.updateEvent(state.event.id!, data);
  }

  Future<void> updateScheduleCandidates() async{
    final data = state.scheduleCandidates.map((e) => e.toJson()).toList();
    for (var e in data) {
      e.removeWhere((key, value) => key == 'voters');
    }
    await eventService.updateScheduleCandidates(state.event.id ?? -1, data);
  }

  Future<void> updateLocationInformation(String name, String address, double latitude, double longitude) async {
    final data = {
      'location_address': address,
      'location_name': name,
      'location_latitude': latitude,
      'location_longitude': longitude,
    };
    await eventService.updateEvent(state.event.id!, data);
  }

  Future<void> updateSplittingInformation(int? cost, String costType) async {
    final data = {
      'cost': cost,
      'cost_type': costType
    };
    await eventService.updateEvent(state.event.id!, data);
  }

  void addPeriod(ScheduleCandidate period) {
    state.scheduleCandidates.add(period);
    state = state.copyWith(scheduleCandidates: state.scheduleCandidates);
  }

  void removePeriod(ScheduleCandidate period) {
    state.scheduleCandidates.remove(period);
    state = state.copyWith(scheduleCandidates: state.scheduleCandidates);
  }

  void changeLoading(bool loading) {
    state = state.copyWith(loading: loading);
  }

  void changeUserLabel(int index, String label){
    final newUserState = state.participants[index].copyWith(label :label);
    List<Participant> clone = [...state.participants];
    clone[index] = newUserState;
    state = state.copyWith(participants: clone);
  }

  Future<void> updateParticipants(List<Participant> list) async {
    await eventService.updateParticipants(state.event.id ?? -1, list);
  }

  Future<int> createEvent() async {
    // TODO apiにnameとdescriptionを渡し返り値でイベントのidを受け取るやつを記述する。
    final data = {
      'name': state.event.name,
      'description': state.event.description
    };
    final id = await eventService.createEvent(data);
    return id;
  }

  Future<void> createUserEvents(String id) async {
    await eventService.createUserEvents(id);
  }

  Event getCurrentEvent(){
    return state.event;
  }
}

final eventUpdateProvider = StateNotifierProvider<EventUpdateNotifier
,EventUpdateState>((ref) {
  return EventUpdateNotifier();
});