import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/splitting_the_cost_provider.dart';

class SplittingTheCostDialog extends HookConsumerWidget {

  const SplittingTheCostDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final provider = ref.watch(splittingTheCostProvider);
    var money = useState(provider.money);
    var number = useState(provider.number);

    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            SwitchListTile(
              title: const Text('割り勘設定'),
              value: provider.flag,
              onChanged: (value) => ref.read(splittingTheCostProvider.notifier)
                  .changeFlag(value),
              secondary: const Icon(Icons.lightbulb_outline),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: '金額',
                border: OutlineInputBorder(),
              ),
              enabled: provider.flag,
              keyboardType: TextInputType.number,
              initialValue: (money.value!=0.0) ? money.value.toString() : "",
              onChanged: (text){
                money.value = double.parse(text);
              }
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: '人数',
                border: OutlineInputBorder(),
              ),
              enabled: provider.flag,
              keyboardType: TextInputType.number,
              initialValue: (number.value!=0.0) ? number.value.toString() : "",
              onChanged: (text){
                number.value = double.parse(text);
                },
            ),
            TextFormField(
              controller: TextEditingController(
                  text: (number.value!=0.0) ?
                    (money.value/number.value).toString() : "",
              ),
              decoration: const InputDecoration(
                hintText: '一人当たりの金額',
                border: OutlineInputBorder(),
              ),
              enabled: provider.flag,
              readOnly:true,
            ),ListTile(
              title: Text('確定'),
              onTap: () {
                ref.read(splittingTheCostProvider.notifier)
                    .changeMoney(money.value);
                ref.read(splittingTheCostProvider.notifier)
                    .changeNumber(number.value);
                ref.read(splittingTheCostProvider.notifier)
                    .changeAverage(money.value/number.value);
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    }
  }