import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/event_list.dart';
import 'package:schetify/model/entity/event.dart';
import 'package:schetify/model/repository/event_repository.dart';
import 'package:schetify/model/repository/test_repository.dart';

final eventListProvider = StateNotifierProvider<EventDataNotifier, EventList>((ref){
  return EventDataNotifier();
});

class EventDataNotifier extends StateNotifier<EventList> {
  EventDataNotifier(): super(const EventList(
      loading: true,
      error: false,
      eventList: []
  )){
    getEvents();
  }

  final TestRepository testService = TestRepository();
  final EventRepository eventService = EventRepository();

  void changeLoading(bool loading) {
    state = state.copyWith(loading: loading);
  }
  void changeError(bool error) {
    state = state.copyWith(error: error);
  }

  void changeEventList(List<Event> eventList) {
    state = state.copyWith(eventList: eventList);
  }

  Future<void> getEvents() async {
    changeLoading(true);
    try{
      await Future.delayed(const Duration(seconds: 1));
      final events = await eventService.getEvents();
      state = EventList(loading: false, error: false, eventList: events);
    }catch(e){
      state = state.copyWith(loading: false, error: true);
      debugPrint(e.toString());
    }
  }
}
