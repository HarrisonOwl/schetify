import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/event_detail_provider.dart';
import 'package:schetify/provider/event_list_provider.dart';
import '../../../../provider/event_update_provider.dart';

class EventCreatePage extends HookConsumerWidget {
  const EventCreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = useState(true);
    final notifier = ref.read(eventUpdateProvider.notifier);
    final detail_notifier = ref.read(eventDetailProvider.notifier);
    final isRunning = useState(false);
    final listNotifier = ref.read(eventListProvider.notifier);

    SnackBar alertSnackBar = SnackBar(
      content: const Text('作成に失敗しました。'),
      action: SnackBarAction(
        label: '閉じる',
        onPressed: (){
          //閉じるが押された時行いたい処理
        },
      ),
    );

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        Future<void>.microtask(() async {
          await notifier.initialize();
          loading.value = false;
        });
      });
      return null;
    }, const []);
    return Scaffold(
      backgroundColor: Colors.green,
        resizeToAvoidBottomInset: false,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child:  Row(
                  children: const [
                    Icon(
                      Icons.event_available,
                      size: 65,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text( "予定作成" , style: TextStyle(color: Colors.white, fontSize: 40.0,), textAlign: TextAlign.left),
                  ],
                ),
              ),
              Column(
                children: [
                 SizedBox(height: MediaQuery.of(context).size.height * 0.12),
              Container(
                alignment: const Alignment(0.0, 0.0),
                height: 100,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: '予定名',
                    contentPadding: const EdgeInsets.all(20),
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onChanged: notifier.changeName,
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                  hintText: '予定説明(選択)',
                  contentPadding: const EdgeInsets.all(15),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                onChanged: notifier.changeDescription,
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(
                  height: 70,
                  width: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        )
                    ),
                    onPressed: !isRunning.value ? () async {
                      isRunning.value = true;
                      await notifier.createEvent()
                          .then((id) async {
                            detail_notifier.newEvent(notifier.getCurrentEvent());
                          Navigator.of(context).pop();
                          Navigator.of(context).pushNamed("/event/edit", arguments: {'id': id})
                              .then((value) async {
                            await listNotifier.getEvents();
                          });
                          }).onError((error, stackTrace) {
                        ScaffoldMessenger.of(context).showSnackBar(alertSnackBar);
                        isRunning.value = false;
                      });
                    } : null,
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.grey,
                      size: 30.0,
                    ),
                  ),
                ),
              ),
                  if (isRunning.value) const CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white))

                ],),
            ],
          )
      )
  );
  }
}