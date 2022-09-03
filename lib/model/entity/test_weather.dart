import 'package:freezed_annotation/freezed_annotation.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/test_weather.freezed.dart';
part 'generated/test_weather.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class TestWeather with _$TestWeather {
  const factory TestWeather({
    required String date,
    required String name,
    required String type,
  }) = _TestWeather;

  factory TestWeather.fromJson(Map<String, Object?> json)
  => _$TestWeatherFromJson(json);
}