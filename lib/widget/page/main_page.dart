import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uni_links/uni_links.dart';

import '../../provider/event_list_provider.dart';
import '../components/schedule/event_list_item.dart';
import '../../provider/event_update_provider.dart';

class MainPage extends StatefulHookConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => MainPageState();
}

class MainPageState extends ConsumerState<MainPage>{
  @override
  void initState() {
    super.initState();
    initUniLinks();
  }

  Map<String, String>? getQueryParameter(String? link) {
    if (link == null) return null;
    final uri = Uri.parse(link);
    // schetify://events/?id=3&name=お疲れ様会
    final params = uri.queryParameters;
    if (params['id'] == null) return null;
    if (params['name'] == null) return null;
    return params;
  }

  SnackBar createAlertSnackBar(String text) {
    return SnackBar(
      content: Text(text),
      action: SnackBarAction(
        label: '閉じる',
        onPressed: (){
          //閉じるが押された時行いたい処理
        },
      ),
    );
  }

  Future<void> initUniLinks() async {
    linkStream.listen((String? link) async {
      final params = getQueryParameter(link);
      if(FirebaseAuth.instance.currentUser == null) {
        ScaffoldMessenger.of(context).showSnackBar(createAlertSnackBar("ログインを行ってください。"));
      }
      else if(params != null) {
        await showDialog(
            context: context,
            builder: (_) =>
                AlertDialog(
                  title: const Text("以下のイベントへの招待を受け取りました。"),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(params['name'] ?? '')
                          ],
                        ),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        side: const BorderSide(),
                      ),
                      onPressed: () async {
                        await ref.read(eventUpdateProvider.notifier)
                            .createUserEvents(params['id'] ?? '');
                        await ref.read(eventListProvider.notifier)
                            .getEvents()
                            .then((_) {
                          Navigator.of(context).pop();
                        });
                      },
                      child: const Text('このイベントに参加する'),
                    )
                  ],
                )
        );
      }
      else {
        ScaffoldMessenger.of(context).showSnackBar(createAlertSnackBar("URLが不正です。"));
      }
    }, onError: (err) {
      debugPrint(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    final data = ref.watch(eventListProvider);
    final notifier = ref.read(eventListProvider.notifier);

    Future<void> updateEventInformation() async {
      await notifier.getEvents();
    }

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        Future<void>.microtask(() async {
          await updateEventInformation();
        });
      });
      return null;
    }, const []);

    return Scaffold(
      appBar: AppBar(
        title: Text("Schetify",style: GoogleFonts.lato(fontSize: 35, color: Colors.white, fontWeight: FontWeight.w700)),
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          Stack(children: [
            IconButton(onPressed: () => {
              Navigator.of(context).pushNamed("/settings")
            }, icon: const Icon(Icons.settings)),
          ],),
          Stack(children : <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () async {
                Navigator.of(context).pushNamed("/event/notification")
                    .then((value) async {
                await notifier.getEvents();
                });
              },
            ),
            if(true) Positioned(
              top: 10,
              right: 12,
              child: Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                ),
                constraints: const BoxConstraints(
                  minWidth: 10,
                  minHeight: 10,
                ),
              ),
            )
          ]),
        ],
      ),
      body: Scaffold(
        backgroundColor: Colors.green,
        body: data.loading ? Container(
            alignment: Alignment.center,
            child: const CircularProgressIndicator(
              color: Colors.white,
            )
        ) : ListView.builder(
          itemCount: data.eventList.length,
          itemBuilder: (BuildContext context, int index) {
            final event = data.eventList[index];
            return EventListItemComponent(
              event: event
            );
          }
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).pushNamed("/event/new")
                .then((value) async {
              await notifier.getEvents();
            });
          },
          tooltip: 'Increment',
          backgroundColor: Colors.lightGreen,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
