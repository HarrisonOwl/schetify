import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schetify/model/entity/participant.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/participants.freezed.dart';
part 'generated/participants.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class Participants with _$Participants {
  const factory Participants({
    @ParticipantListConverter() required List<Participant> participants,
  }) = _Participants;

  factory Participants.fromJson(Map<String, Object?> json)
  => _$ParticipantsFromJson(json);
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