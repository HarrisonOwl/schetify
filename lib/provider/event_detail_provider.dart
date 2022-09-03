import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/event.dart';
import 'package:schetify/model/entity/event_detail_state.dart';

class EventDetailNotifier extends StateNotifier<EventDetailState> {
  EventDetailNotifier() : super(const EventDetailState(
      event: Event(
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
      scheduleCandidateList: [],
      participantList: []
  ));
}

final scheduleDayProvider = StateNotifierProvider<EventDetailNotifier
,EventDetailState>((ref) {
  return EventDetailNotifier();
});