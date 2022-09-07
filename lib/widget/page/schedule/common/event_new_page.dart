import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../provider/event_update_provider.dart';

class EventCreatePage extends HookConsumerWidget {
  const EventCreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = useState(true);
    final notifier = ref.read(eventUpdateProvider.notifier);
    final detail = ref.watch(eventUpdateProvider);

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
      appBar: AppBar(
        title: const Text("予定作成"),
      ),
      body: loading.value ? Container(
          alignment: Alignment.center,
          child: const CircularProgressIndicator(
            color: Colors.green,
          )
      ) : Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                alignment: const Alignment(0.0, 0.0),
                height: 100,
                child: TextFormField(
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                  initialValue: detail.event.name,
                  decoration: InputDecoration(
                    hintText: '予定名',
                    contentPadding: const EdgeInsets.all(20),
                    fillColor: Colors.green[100],
                    filled: true,
                    isDense: true,
                    prefixIcon: Container(
                      margin: const EdgeInsets.all(20),
                      child: const Icon(
                        Icons.event_available,
                        size: 40,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: notifier.changeName,
                ),
              ),
              TextFormField(
                initialValue: detail.event.description,
                decoration: const InputDecoration(
                  labelText: '説明',
                ),
                keyboardType: TextInputType.multiline,
                maxLines: null,
                onChanged: notifier.changeDescription,
              ),
              Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SizedBox(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        notifier.createEvent()
                        .then((id) {
                          // APIから保存して返り値のイベントidを受け取る
                          Navigator.of(context).pop();
                          Navigator.of(context).pushNamed("/schedule/new", arguments: {'id': id});
                        });
                      },
                      child: const Text('作成'),
                    ),
                  ),
              )
            ],
          )
      )
  );
  }
}