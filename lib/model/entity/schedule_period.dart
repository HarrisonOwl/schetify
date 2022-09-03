import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/schedule_period.freezed.dart';
part 'generated/schedule_period.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class SchedulePeriod with _$SchedulePeriod {
  const SchedulePeriod._();
  const factory SchedulePeriod({
    required DateTime startTime,
    required DateTime endTime,
  }) = _SchedulePeriod;

  factory SchedulePeriod.fromJson(Map<String, Object?> json)
  => _$SchedulePeriodFromJson(json);

  String getText() {
    String str1 = DateFormat('yyyy/MM/dd(E) HH:mm~')
        .format(startTime)
        .replaceAll('Sun', '日')
        .replaceAll('Mon', '月')
        .replaceAll('Tue', '火')
        .replaceAll('Wed', '水')
        .replaceAll('Thu', '木')
        .replaceAll('Fri', '金')
        .replaceAll('Sat', '土');
    String str2 = DateFormat('HH:mm')
        .format(endTime);
    return str1 + str2;
  }

  @override // <- Added
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (
            other.runtimeType == runtimeType && other is _SchedulePeriod &&
                const DeepCollectionEquality().equals(other.getText(), getText())
        );
  }

  @override // <- Added
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(getText()),
  );
}