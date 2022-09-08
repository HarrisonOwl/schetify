

import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/event.dart';
import 'package:schetify/model/entity/schedule_candidate.dart';
import 'package:schetify/model/repository/test_repository.dart';

import '../model/entity/event_update_state.dart';
import '../model/entity/participant.dart';

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
          questionare_url: null
      ),
      scheduleCandidates: SplayTreeSet<ScheduleCandidate>((a, b) => a.getText().compareTo(b.getText())),
      participants: [],
    loading: true,
  ));

  final TestRepository testService = TestRepository();

  Future<void> getEventInformation(int id) async {
    try{
      state = state.copyWith(loading: true);
      await Future.delayed(const Duration(seconds: 1));
      final event = await testService.getEvent(id);
      final participants = await testService.getParticipants(id);
      final candidates = await testService.getScheduleCandidates(id);
      state = state.copyWith(
          event: event,
          participants: participants,
          scheduleCandidates: candidates,
          loading: false
      );
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
              questionare_url: null
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

  Future<int> updateName(String? name) async{
    final data = {
      'name': name
    };
    int status;
    if(name != null && name != '') {
      status = await testService.updateEvent(data);
    }
    else {
      status = 400;
    }
    return status;
  }

  Future<int> updateDescription(String? description) async{
    final data = {
      'description': description
    };
    final status = await testService.updateEvent(data);
    return status;
  }

  Future<int> updateScheduleCandidates() async{
    final data = state.scheduleCandidates.map((e) => e.toJson()).toList();
    for (var e in data) {
      e.removeWhere((key, value) => key == 'voters');
    }
    print(data);
    final status = await testService.updateScheduleCandidates(state.event.id, data);
    return status;
  }

  Future<int> updateLocationInformation(String name, String address, double latitude, double longitude) async {
    final data = {
      'location_address': address,
      'location_name': name,
      'location_latitude': latitude,
      'location_longitude': longitude,
    };
    final status = await testService.updateEvent(data);
    return status;
  }

  Future<int> updateSplittingInformation(int? cost, int costType) async {
    final data = {
      'cost': cost,
      'cost_type': costType
    };
    final status = await testService.updateEvent(data);
    return status;
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

  void changeUserLabel(int index, int label){
    final newUserState = state.participants[index].copyWith(label :label);
    List<Participant> clone = [...state.participants];
    clone[index] = newUserState;
    state = state.copyWith(participants: clone);
  }

  Future<Map<String, int>> createEvent() async {
    // TODO apiにnameとdescriptionを渡し返り値でイベントのidを受け取るやつを記述する。
    final data = {
      'name': state.event.name,
      'description': state.event.description
    };
    final set = testService.createEvent(data);
    return set;
  }
}

final eventUpdateProvider = StateNotifierProvider<EventUpdateNotifier
,EventUpdateState>((ref) {
  return EventUpdateNotifier();
});