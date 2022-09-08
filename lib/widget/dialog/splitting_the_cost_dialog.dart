import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/event_update_provider.dart';

class SplittingTheCostDialog extends HookConsumerWidget {

  const SplittingTheCostDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final detail = ref.watch(eventUpdateProvider);
    final notifier = ref.read(eventUpdateProvider.notifier);
    final flag = useState(detail.event.cost != null);
    final costType = useState(detail.event.cost_type);
    final costPerPerson = useState(costType.value == 1 ? detail.event.cost : null);
    final totalCost = useState(costType.value == 0 ? detail.event.cost : null);

    void setType(int? value) {
      if(flag.value) {
        costType.value = value ?? 0;
      }
    }

    SnackBar alertSnackBar = SnackBar(
      content: const Text('更新に失敗しました。'),
      action: SnackBarAction(
        label: '閉じる',
        onPressed: (){
          //閉じるが押された時行いたい処理
        },
      ),
    );

    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            SwitchListTile(
              title: const Text('割り勘設定'),
              value: flag.value,
              onChanged: (value) {
                flag.value = value;
              },
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
                      enabled: flag.value && costType.value == 0,
                      keyboardType: TextInputType.number,
                      initialValue: (totalCost.value != null && totalCost.value!=0.0) ? totalCost.value.toString() : "",
                      onChanged: (text){
                        totalCost.value = int.parse(text);
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
                      enabled: flag.value && costType.value == 1,
                      keyboardType: TextInputType.number,
                      initialValue: (costPerPerson.value != null && costPerPerson.value!=0.0) ? costPerPerson.value.toString() : "",
                      onChanged: (text){
                        costPerPerson.value = int.parse(text);
                      }
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("現在の人数: ${detail.participants.length}人 一人当たり${costType.value == 0 ? ((totalCost.value ?? 0) / detail.participants.length).ceil() : costPerPerson.value  ?? 0}"),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10),
                    child: OutlinedButton(
                      child: const Text('確定'),
                      onPressed: () async {
                        if(!flag.value) {
                          notifier.updateSplittingInformation(null, costType.value ?? 0)
                              .then((status) {
                            if(status == 200) {
                              Navigator.of(context).pop();
                            }
                            else {
                              ScaffoldMessenger.of(context).showSnackBar(alertSnackBar);
                            }
                          });
                        }
                        else {
                          final cost = costType.value == 0 ? totalCost.value : costPerPerson.value;
                          if(cost != null) {
                            notifier.updateSplittingInformation(cost, costType.value ?? 0)
                                .then((status) {
                              if(status == 200) {
                                Navigator.of(context).pop();
                                notifier.getEventInformation(detail.event.id ?? -1);
                              }
                              else {
                                ScaffoldMessenger.of(context).showSnackBar(alertSnackBar);
                              }
                            });
                          }
                        }
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