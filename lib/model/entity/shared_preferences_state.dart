import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
// {ファイル名}.freezed.dart　と書く
part 'shared_preferences_state.freezed.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class SharedPreferencesState with _$SharedPreferencesState {
  const factory SharedPreferencesState({
    required SharedPreferences? pref,
  }) = _SharedPreferencesState;
}