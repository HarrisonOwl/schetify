import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/grouping_provider.dart';
import 'package:schetify/widget/components/seat/group_list_item.dart';

import '../../../../../provider/event_update_provider.dart';



class SeatDistributionResult extends HookConsumerWidget {
  const SeatDistributionResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SnackBar alertSnackBar = SnackBar(
      content: const Text('保存に失敗しました。'),
      action: SnackBarAction(
        label: '閉じる',
        onPressed: (){
          //閉じるが押された時行いたい処理
        },
      ),
    );

    final provider = ref.watch(groupingProvider);
    final updateNotifier = ref.read(eventUpdateProvider.notifier);
    final updateDetail = ref.watch(eventUpdateProvider);

    final saving = useState(false);
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        body: Column(
          children: [
            Container(
              color: Colors.green,
              child: Padding(padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.people,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text( '席分け結果' , style: TextStyle(color: Colors.white, fontSize: 26.0,), textAlign: TextAlign.left),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: provider.groupedParticipantsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GroupListItemComponent(groupName: "Group ${provider.groupedParticipantsList[index].groupId+1}", participants: provider.groupedParticipantsList[index].participants);
                }
              ),
            )
          ],
        ),
        bottomNavigationBar:
        Container(
      color: Colors.transparent,
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 10),
          Expanded(
            flex:30,
              child: SizedBox(
              height: 50,
              width: 100, child: ElevatedButton.icon(
            label: const Text('やり直す', style: TextStyle(color: Colors.white),),
            icon: const Icon(Icons.refresh, color: Colors.white,),
            style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                )
            ),
            onPressed: (){
              Navigator.pushReplacementNamed(context, '/event/seat/new');
            },
          ))),
          const SizedBox(width: 20),
          Expanded(
              flex: 30,
              child: SizedBox(
              height: 50,
              width: 120, child: saving.value ? const FittedBox(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white))) : ElevatedButton.icon(
                label: const Text('保存', style: TextStyle(color: Colors.green),),
                icon: const Icon(Icons.save, color: Colors.green,),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    )
                ),
                onPressed: () async{
                  saving.value = true;
                  await updateNotifier.updateParticipants([for(final participants in provider.groupedParticipantsList) ...(participants.participants)]).then((value) async {
                    Navigator.pushReplacementNamed(context, '/event/seat');
                  }, onError: (err){
                    saving.value = false;
                    ScaffoldMessenger.of(context).showSnackBar(alertSnackBar);
                  });

                },
              ))),
          const SizedBox(width: 10),
        ],
      ),
    ),
    );
  }


}