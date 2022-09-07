import 'package:schetify/model/entity/schedule.dart';
import 'package:schetify/model/entity/user_name_list.dart';

import 'test_weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/grouped_user_list.freezed.dart';

@freezed
class GroupedUserList with _$GroupedUserList{
  const factory GroupedUserList({
    required List<UserNameList> groupedUserList,
  }) = _GroupedUserList;

}