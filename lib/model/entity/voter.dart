import 'package:freezed_annotation/freezed_annotation.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/voter.freezed.dart';
part 'generated/voter.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class Voter with _$Voter {
  const Voter._();
  const factory Voter({
    required int user_id,
    required String username,
    required int status, // 0...unable, 1...maybe, 2...able
  }) = _Voter;

  factory Voter.fromJson(Map<String, Object?> json)
  => _$VoterFromJson(json);
}