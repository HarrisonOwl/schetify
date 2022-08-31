import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/schedule_destination.dart';

class ScheduleDestinationNotifier extends StateNotifier<ScheduleDestination> {
  ScheduleDestinationNotifier() : super(const ScheduleDestination(
      name: null,
      address: null,
      latitude: null,
      longitude: null,
  ));

  void setName(String? name) {
    state = state.copyWith(name: name);
  }

  void setAddress(String? address) {
    state = state.copyWith(address: address);
  }

  void setLatitude(double? latitude) {
    state = state.copyWith(latitude: latitude);
  }

  void setLongitude(double? longitude) {
    state = state.copyWith(longitude: longitude);
  }
}

final scheduleDestinationProvider = StateNotifierProvider<ScheduleDestinationNotifier
,ScheduleDestination>((ref) {
  return ScheduleDestinationNotifier();
});