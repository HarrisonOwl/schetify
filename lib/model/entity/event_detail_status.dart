import 'package:freezed_annotation/freezed_annotation.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/event_detail_status.freezed.dart';

@freezed
class EventDetailStatus with _$EventDetailStatus{
  const factory EventDetailStatus({
    required String detail
  }) = _EventDetailStatus;

}