import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/main_showing_provider.dart';
import 'package:schetify/widget/page/chat_page.dart';
import 'package:schetify/widget/page/schedule_page.dart';
import 'package:schetify/widget/page/settings_page.dart';

class MainPage extends HookConsumerWidget {
  MainPage({Key? key}) : super(key: key);

  final pages = [
    const SchedulePage(),
    const ChatPage(),
    const SettingsPage(),
  ];

  final titles = [
    "予定一覧",
    "チャット",
    "設定一覧"
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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