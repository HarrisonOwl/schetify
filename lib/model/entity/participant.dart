import 'package:freezed_annotation/freezed_annotation.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/participant.freezed.dart';
part 'generated/participant.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class Participant with _$Participant {
  const factory Participant({
    required int relation_id,
    required String user_id,
    required String username,
    required String label,
    required int? group_id,
  }) = _Participant;

  factory Participant.fromJson(Map<String, Object?> json)
  => _$ParticipantFromJson(json);
}
