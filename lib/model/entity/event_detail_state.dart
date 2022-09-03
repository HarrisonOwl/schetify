import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schetify/model/entity/event.dart';
import 'package:schetify/model/entity/participant.dart';
import 'package:schetify/model/entity/schedule_candidate.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/event_detail_state.freezed.dart';
part 'generated/event_detail_state.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class EventDetailState with _$EventDetailState {
  const factory EventDetailState({
    required Event event,
    @ScheduleCandidateListConverter() required List<ScheduleCandidate> scheduleCandidateList,
    @ParticipantListConverter() required List<Participant> participantList,
  }) = _EventDetailState;

  factory EventDetailState.fromJson(Map<String, Object?> json)
  => _$EventDetailStateFromJson(json);
}

class ScheduleCandidateListConverter implements JsonConverter<List<ScheduleCandidate>, List<Map<String, dynamic>>> {
  const ScheduleCandidateListConverter();

  @override
  List<ScheduleCandidate> fromJson(List<Map<String, dynamic>> json) {
    final ret = json.map((scheduleCandidate) => ScheduleCandidate.fromJson(scheduleCandidate)).toList();
    return ret;
  }

  @override
  List<Map<String, dynamic>> toJson(List<ScheduleCandidate> json) {
    final ret = json.map((scheduleCandidate) => scheduleCandidate.toJson()).toList();
    return ret;
  }
}

class ParticipantListConverter implements JsonConverter<List<Participant>, List<Map<String, dynamic>>> {
  const ParticipantListConverter();

  @override
  List<Participant> fromJson(List<Map<String, dynamic>> json) {
    final ret = json.map((participant) => Participant.fromJson(participant)).toList();
    return ret;
  }

  @override
  List<Map<String, dynamic>> toJson(List<Participant> json) {
    final ret = json.map((participant) => participant.toJson()).toList();
    return ret;
  }
}