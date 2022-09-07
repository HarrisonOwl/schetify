import 'package:freezed_annotation/freezed_annotation.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/number_of_groups.freezed.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class NumberOfGroups with _$NumberOfGroups {
  const factory NumberOfGroups({
    required int number,
  }) = _NumberOfGroups;
}