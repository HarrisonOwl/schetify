import 'package:freezed_annotation/freezed_annotation.dart';
part 'generated/splitting_the_cost_status.freezed.dart';

@freezed
class SplittingTheCostStatus with _$SplittingTheCostStatus{
  const factory SplittingTheCostStatus({
    required bool flag,
    required double money,
    required double number,
    required double average,
  }) = _SplittingTheCostStatus;
}