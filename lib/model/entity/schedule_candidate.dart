import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schetify/model/entity/voter.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/schedule_candidate.freezed.dart';
part 'generated/schedule_candidate.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class ScheduleCandidate with _$ScheduleCandidate {
  const factory ScheduleCandidate({
    required int id,
    required DateTime start_at,
    required DateTime end_at,
    @VoterListConverter() required List<Voter> voters,
  }) = _ScheduleCandidate;

  factory ScheduleCandidate.fromJson(Map<String, Object?> json)
  => _$ScheduleCandidateFromJson(json);
}

class VoterListConverter implements JsonConverter<List<Voter>, List<Map<String, dynamic>>> {
  const VoterListConverter();

  @override
  List<Voter> fromJson(List<Map<String, dynamic>> json) {
    final ret = json.map((voter) => Voter.fromJson(voter)).toList();
    return ret;
  }

  @override
  List<Map<String, dynamic>> toJson(List<Voter> json) {
    final ret = json.map((voter) => voter.toJson()).toList();
    return ret;
  }
}