import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/event_detail_status.dart';

class EventDescriptionNotifier extends StateNotifier<EventDetailStatus> {
  EventDescriptionNotifier() : super(const EventDetailStatus(
      detail: ""));

  changeDescription(String detail){
    state = state.copyWith(detail: detail);
  }
}

final eventDescriptionProvider = StateNotifierProvider<EventDescriptionNotifier
,EventDetailStatus>((ref) {
  return EventDescriptionNotifier();
});