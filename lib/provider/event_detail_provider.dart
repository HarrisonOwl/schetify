import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/event_detail_status.dart';

class EventDetailNotifier extends StateNotifier<EventDetailStatus> {
  EventDetailNotifier() : super(const EventDetailStatus(
      detail: ""));

  changeDetail(String detail){
    state = state.copyWith(detail: detail);
  }
}

final eventDetailProvider = StateNotifierProvider<EventDetailNotifier
,EventDetailStatus>((ref) {
  return EventDetailNotifier();
});