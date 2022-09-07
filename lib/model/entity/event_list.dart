import 'package:schetify/model/entity/event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/event_list.freezed.dart';

@freezed
class EventList with _$EventList{
  const factory EventList({
    required bool loading,
    required bool error,
    required List<Event> eventList,
  }) = _EventList;

}