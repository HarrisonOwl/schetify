import 'package:schetify/model/entity/schedule.dart';
import 'package:schetify/model/entity/participants_list.dart';

import 'test_weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/grouped_participants_list.freezed.dart';

@freezed
class GroupedParticipantsList with _$GroupedParticipantsList{
  const factory GroupedParticipantsList({
    required List<ParticipantsList> groupedParticipantsList,
  }) = _GroupedParticipantsList;

}