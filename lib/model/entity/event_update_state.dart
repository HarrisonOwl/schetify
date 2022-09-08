import 'dart:collection';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schetify/model/entity/event.dart';
import 'package:schetify/model/entity/participant.dart';
import 'package:schetify/model/entity/schedule_candidate.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/event_update_state.freezed.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class EventUpdateState with _$EventUpdateState {
  const factory EventUpdateState({
    required Event event,
    required SplayTreeSet<ScheduleCandidate> scheduleCandidates,
    required List<Participant> participants,
    required bool loading,
  }) = _EventUpdateState;
}