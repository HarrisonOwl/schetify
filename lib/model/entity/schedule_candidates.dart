import 'dart:collection';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schetify/model/entity/schedule_candidate.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/schedule_candidates.freezed.dart';
part 'generated/schedule_candidates.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class ScheduleCandidates with _$ScheduleCandidates {
  const ScheduleCandidates._();
  const factory ScheduleCandidates({
    @SplayTreeSetConverter() required SplayTreeSet<ScheduleCandidate> candidates,
  }) = _ScheduleCandidates;

  factory ScheduleCandidates.fromJson(Map<String, Object?> json)
  => _$ScheduleCandidatesFromJson(json);
}

class SplayTreeSetConverter implements JsonConverter<SplayTreeSet<ScheduleCandidate>, List<Map<String, dynamic>>> {
  const SplayTreeSetConverter();

  @override
  SplayTreeSet<ScheduleCandidate> fromJson(List<Map<String, dynamic>> json) {
    final data = json.map((period) => ScheduleCandidate.fromJson(period)).toList();
    final SplayTreeSet<ScheduleCandidate> ret =
    SplayTreeSet((a, b) => a.getText().compareTo(b.getText()));
    for (var e in data) { ret.add(e); }
    return ret;
  }

  @override
  List<Map<String, dynamic>> toJson(SplayTreeSet<ScheduleCandidate> json) {
    final ret = json.map((e) => e.toJson()).toList();
    return ret;
  }
}