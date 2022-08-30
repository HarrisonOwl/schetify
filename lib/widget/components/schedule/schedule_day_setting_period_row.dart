import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/schedule_days_state.dart';
import 'package:schetify/provider/schedule_day_provider.dart';

@immutable
class ScheduleDaySettingPeriodRow extends StatelessWidget {
  const ScheduleDaySettingPeriodRow({Key? key, required this.provider, required this.ref}) : super(key: key);

  final ScheduleDaysState provider;
  final WidgetRef ref;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text('開始時間:'),
            OutlinedButton(
              onPressed: () async {
                final newTime = await showTimePicker(
                  context: context,
                  initialTime: provider.defaultStartTimeOfDay,
                  helpText: "開始時間を入力してください"
                );

                if(newTime != null){
                  ref.read(scheduleDayProvider.notifier)
                    .changeDefaultStartTimeOfDate(newTime);
                }
              },
              child: Text(provider.defaultStartTimeOfDay.format(context))
            )
          ]
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text('終了時間:'),
            OutlinedButton(
              onPressed: () async {
                final newTime = await showTimePicker(
                  context: context,
                  initialTime: provider.defaultEndTimeOfDay,
                  helpText: "終了時間を入力してください"
                );

                if(newTime != null){
                ref.read(scheduleDayProvider.notifier)
                  .changeDefaultEndTimeOfDate(newTime);
                }
              },
              child: Text(provider.defaultEndTimeOfDay.format(context))
            )
          ]
        )
      ],
    );
  }
}