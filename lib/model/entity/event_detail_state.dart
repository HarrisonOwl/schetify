import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schetify/model/entity/event.dart';
import 'package:schetify/model/entity/participant.dart';
import 'package:schetify/model/entity/participants.dart';
import 'package:schetify/model/entity/schedule_candidate.dart';
import 'package:schetify/model/entity/schedule_candidates.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/event_detail_state.freezed.dart';
part 'generated/event_detail_state.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class EventDetailState with _$EventDetailState {
  const factory EventDetailState({
    required Event event,
    required ScheduleCandidates scheduleCandidates,
    required Participants participants,
  }) = _EventDetailState;

  factory EventDetailState.fromJson(Map<String, Object?> json)
  => _$EventDetailStateFromJson(json);
}