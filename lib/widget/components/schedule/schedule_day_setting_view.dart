import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/schedule_days_state.dart';
import 'package:schetify/widget/components/schedule/schedule_day_setting_switch_row.dart';
import 'package:schetify/widget/components/schedule/schedule_day_setting_period_row.dart';

@immutable
class ScheduleDaySettingView extends StatelessWidget {
  const ScheduleDaySettingView({Key? key, required this.provider, required this.ref}) : super(key: key);

  final WidgetRef ref;
  final ScheduleDaysState provider;


  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: provider.isSetPeriodCollectively ? <Widget>[
          ScheduleDaySettingSwitchRow(isSetPeriodCollectively: provider.isSetPeriodCollectively, ref: ref),
          ScheduleDaySettingPeriodRow(provider: provider, ref: ref)
        ] : <Widget>[
          ScheduleDaySettingSwitchRow(isSetPeriodCollectively: provider.isSetPeriodCollectively, ref: ref),
        ]
    );
  }
}