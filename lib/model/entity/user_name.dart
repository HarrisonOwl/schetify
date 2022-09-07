import 'package:freezed_annotation/freezed_annotation.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/user_name.freezed.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class UserName with _$UserName {
  const factory UserName({
    required String name,
  }) = _UserName;
}