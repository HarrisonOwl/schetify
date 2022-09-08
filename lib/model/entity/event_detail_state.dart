import 'dart:collection';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schetify/model/entity/event.dart';
import 'package:schetify/model/entity/participant.dart';
import 'package:schetify/model/entity/schedule_candidate.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/event_detail_state.freezed.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class EventDetailState with _$EventDetailState {
  const factory EventDetailState({
    required Event event,
    required SplayTreeSet<ScheduleCandidate> scheduleCandidates,
    required List<Participant> participants,
    required bool loading,
    required String user_id,
  }) = _EventDetailState;
}