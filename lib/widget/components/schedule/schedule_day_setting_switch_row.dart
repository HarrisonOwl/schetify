import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/schedule_day_provider.dart';

@immutable
class ScheduleDaySettingSwitchRow extends StatelessWidget {
  const ScheduleDaySettingSwitchRow({Key? key, required this.isSetPeriodCollectively, required this.ref}) : super(key: key);

  final bool isSetPeriodCollectively;
  final WidgetRef ref;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('日程期間をまとめて設定'),
        SizedBox(
          height: 50,
          width: 100,
          child: SwitchListTile(
              value: isSetPeriodCollectively,
              onChanged: (bool value) => ref.read(scheduleDayProvider.notifier)
                  .changeIsSetPeriodCollectively(value)
          ),
        ),
      ],
    );
  }
}