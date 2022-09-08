import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schetify/model/entity/voter.dart';
import 'package:intl/intl.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/schedule_candidate.freezed.dart';
part 'generated/schedule_candidate.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class ScheduleCandidate with _$ScheduleCandidate {
  const ScheduleCandidate._();
  const factory ScheduleCandidate({
    required int? id,
    required int? event_id,
    required DateTime start_at,
    required DateTime end_at,
    @VoterListConverter() required List<Voter> voters,
  }) = _ScheduleCandidate;

  factory ScheduleCandidate.fromJson(Map<String, Object?> json)
  => _$ScheduleCandidateFromJson(json);

  String getText() {
    String str1 = DateFormat('yyyy/MM/dd(E) HH:mm~')
        .format(start_at)
        .replaceAll('Sun', '日')
        .replaceAll('Mon', '月')
        .replaceAll('Tue', '火')
        .replaceAll('Wed', '水')
        .replaceAll('Thu', '木')
        .replaceAll('Fri', '金')
        .replaceAll('Sat', '土');
    String str2 = DateFormat('HH:mm')
        .format(end_at);
    return str1 + str2;
  }

  String getText2() {
    String str1 = DateFormat('yyyy/MM/dd(E)\nHH:mm~')
        .format(start_at)
        .replaceAll('Sun', '日')
        .replaceAll('Mon', '月')
        .replaceAll('Tue', '火')
        .replaceAll('Wed', '水')
        .replaceAll('Thu', '木')
        .replaceAll('Fri', '金')
        .replaceAll('Sat', '土');
    String str2 = DateFormat('HH:mm')
        .format(end_at);
    return str1 + str2;
  }

  @override // <- Added
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (
            other.runtimeType == runtimeType && other is _ScheduleCandidate &&
                const DeepCollectionEquality().equals(other.getText(), getText())
        );
  }

  @override // <- Added
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(getText()),
  );
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