import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/main_showing_provider.dart';
import 'package:schetify/widget/page/chat_page.dart';
import 'package:schetify/widget/page/event_page.dart';
import 'package:schetify/widget/page/setting/settings_page.dart';
import 'package:uni_links/uni_links.dart';

import '../../provider/event_list_provider.dart';
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
                      onPressed: () {
                        ref.read(eventUpdateProvider.notifier)
                            .createUserEvents(params['id'] ?? '');
                        Navigator.of(context).pop();
                        ref.read(eventListProvider.notifier)
                            .getEvents();
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

  final pages = [
    const EventPage(),
    const ChatPage(),
    const SettingsPage(),
  ];

  final titles = [
    "予定一覧",
    "チャット",
    "設定"
  ];

  @override
  Widget build(BuildContext context) {
    final pageType = ref.watch(mainPageShowingProvider.state);
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[pageType.state.index]),
        actions: [
          Stack(children : <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () => {},
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
      body: pages[pageType.state.index],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: '予定'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'チャット'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
        ],
        currentIndex: pageType.state.index,
        onTap: (int index) => pageType.update((state) => MainPageType.values[index]),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
