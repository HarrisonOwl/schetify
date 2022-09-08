import 'package:schetify/model/entity/user_name.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/user_name_list.freezed.dart';

@freezed
class UserNameList with _$UserNameList{
  const factory UserNameList({
    required List<UserName> userNameList,
  }) = _UserNameList;
}