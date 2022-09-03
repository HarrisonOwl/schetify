import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schetify/model/entity/schedule_candidate.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/schedule_candidates.freezed.dart';
part 'generated/schedule_candidates.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class ScheduleCandidates with _$ScheduleCandidates {
  const factory ScheduleCandidates({
    @ScheduleCandidateListConverter() required List<ScheduleCandidate> candidates,
  }) = _ScheduleCandidates;

  factory ScheduleCandidates.fromJson(Map<String, Object?> json)
  => _$ScheduleCandidatesFromJson(json);
}

class ScheduleCandidateListConverter implements JsonConverter<List<ScheduleCandidate>, List<Map<String, dynamic>>> {
  const ScheduleCandidateListConverter();

  @override
  List<ScheduleCandidate> fromJson(List<Map<String, dynamic>> json) {
    final ret = json.map((candidate) => ScheduleCandidate.fromJson(candidate)).toList();
    return ret;
  }

  @override
  List<Map<String, dynamic>> toJson(List<ScheduleCandidate> json) {
    final ret = json.map((scheduleCandidate) => scheduleCandidate.toJson()).toList();
    return ret;
  }
}