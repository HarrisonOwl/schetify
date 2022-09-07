import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/splitting_the_cost_provider.dart';

class SplittingTheCostDialog extends HookConsumerWidget {

  const SplittingTheCostDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final provider = ref.watch(splittingTheCostProvider);
    final number = useState(6);
    final costType = useState(0);
    final costPerPerson = useState(costType.value == 1 ? provider.money : null);
    final totalCost = useState(costType.value == 0 ? provider.money : null);

    void setType(int? value) {
      if(provider.flag) {
        costType.value = value ?? 0;
      }
    }

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
            Padding(
                padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Radio(
                          value: 0,
                          groupValue: costType.value,
                          onChanged: setType,
                      ),
                      const Text("合計金額から算出")
                    ],
                  ),
                  TextFormField(
                      decoration: const InputDecoration(
                        hintText: '金額',
                        border: OutlineInputBorder(),
                      ),
                      enabled: provider.flag && costType.value == 0,
                      keyboardType: TextInputType.number,
                      initialValue: (totalCost.value != null && totalCost.value!=0.0) ? totalCost.value.toString() : "",
                      onChanged: (text){
                        totalCost.value = double.parse(text);
                      }
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: costType.value,
                          onChanged: setType
                      ),
                      const Text("一人あたりの金額を設定")
                    ],
                  ),
                  TextFormField(
                      decoration: const InputDecoration(
                        hintText: '金額',
                        border: OutlineInputBorder(),
                      ),
                      enabled: provider.flag && costType.value == 1,
                      keyboardType: TextInputType.number,
                      initialValue: (costPerPerson.value != null && costPerPerson.value!=0.0) ? costPerPerson.value.toString() : "",
                      onChanged: (text){
                        costPerPerson.value = double.parse(text);
                      }
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("現在の人数: ${number.value}人 一人当たり${costType.value == 0 ? ((totalCost.value ?? 0) / number.value).ceil() : costPerPerson.value  ?? 0}"),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10),
                    child: OutlinedButton(
                      child: const Text('確定'),
                      onPressed: () {
                        final cost = costType.value == 0 ? totalCost.value : costPerPerson.value;
                        if(cost != null) {
                          ref.read(splittingTheCostProvider.notifier)
                              .changeMoney(cost);
                        }

                        Navigator.of(context).pop();
                      },
                    )
                  )

                ],
              ),
            ),
          ],
        ),
      );
    }
  }