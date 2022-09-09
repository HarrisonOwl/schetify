import 'package:schetify/model/entity/participant.dart';
import 'package:schetify/model/entity/participants.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/participants_list.freezed.dart';

@freezed
class ParticipantsList with _$ParticipantsList{
  const factory ParticipantsList({
    required int groupId,
    required List<Participant> participants,
  }) = _ParticipantsList;
}