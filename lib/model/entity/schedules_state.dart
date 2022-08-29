
import 'test_weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// {ファイル名}.freezed.dart　と書く
part 'schedules_state.freezed.dart';

@freezed
class SchedulesState with _$SchedulesState{
  const factory SchedulesState({
    required bool loading,
    required bool error,
    required List<TestWeather> schedules,
  }) = _SchedulesState;
}