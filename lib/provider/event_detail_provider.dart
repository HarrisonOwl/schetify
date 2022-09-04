import 'dart:collection';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/event.dart';
import 'package:schetify/model/entity/event_detail_state.dart';
import 'package:schetify/model/entity/participants.dart';
import 'package:schetify/model/entity/schedule_candidate.dart';
import 'package:schetify/model/entity/schedule_candidates.dart';

class EventDetailNotifier extends StateNotifier<EventDetailState> {
  EventDetailNotifier() : super(EventDetailState(
      event: const Event(
          id: 1,
          name: "test",
          description: null,
          start_at: null,
          end_at: null,
          img_url: null,
          location_name: null,
          location_address: null,
          location_latitude: null,
          location_longtiude: null,
          group_num: null,
          total_cost: null,
          questionare_url: null
      ),
      scheduleCandidates: ScheduleCandidates(
          candidates: SplayTreeSet<ScheduleCandidate>((a, b) => a.getText().compareTo(b.getText()))
      ),
      participants: const Participants(participants: [])
  )){
    init();
  }

  void init(){
    List<ScheduleCandidate> list = [
      ScheduleCandidate(
          id: 1,
          start_at: DateTime(2022, 9, 5, 12, 0),
          end_at: DateTime(2022, 9, 5, 13, 0),
          voters: []
      ),
      ScheduleCandidate(
          id: 2,
          start_at: DateTime(2022, 9, 6, 12, 0),
          end_at: DateTime(2022, 9, 6, 13, 0),
          voters: []
      ),
      ScheduleCandidate(
          id: 3,
          start_at: DateTime(2022, 9, 7, 12, 0),
          end_at: DateTime(2022, 9, 7, 13, 0),
          voters: []
      ),
      ScheduleCandidate(
          id: 4,
          start_at: DateTime(2022, 9, 8, 12, 0),
          end_at: DateTime(2022, 9, 8, 13, 0),
          voters: []
      ),
      ScheduleCandidate(
          id: 5,
          start_at: DateTime(2022, 9, 4, 12, 0),
          end_at: DateTime(2022, 9, 4, 13, 0),
          voters: []
      ),
    ];
    for (var c in list) { state.scheduleCandidates.candidates.add(c); }
    state = state.copyWith(scheduleCandidates: state.scheduleCandidates);
  }
}

final eventDetailProvider = StateNotifierProvider<EventDetailNotifier
,EventDetailState>((ref) {
  return EventDetailNotifier();
});