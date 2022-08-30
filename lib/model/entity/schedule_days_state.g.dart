// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_days_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleDaysState _$$_ScheduleDaysStateFromJson(Map<String, dynamic> json) =>
    _$_ScheduleDaysState(
      isSetPeriodCollectively: json['isSetPeriodCollectively'] as bool,
      periodList: (json['periodList'] as List<dynamic>)
          .map((e) => SchedulePeriod.fromJson(e as Map<String, dynamic>))
          .toList(),
      defaultStartTimeOfDay: const TimeOfDayConverter()
          .fromJson(json['defaultStartTimeOfDay'] as String?),
      defaultEndTimeOfDay: const TimeOfDayConverter()
          .fromJson(json['defaultEndTimeOfDay'] as String?),
    );

Map<String, dynamic> _$$_ScheduleDaysStateToJson(
        _$_ScheduleDaysState instance) =>
    <String, dynamic>{
      'isSetPeriodCollectively': instance.isSetPeriodCollectively,
      'periodList': instance.periodList,
      'defaultStartTimeOfDay':
          const TimeOfDayConverter().toJson(instance.defaultStartTimeOfDay),
      'defaultEndTimeOfDay':
          const TimeOfDayConverter().toJson(instance.defaultEndTimeOfDay),
    };
