import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../provider/event_list_provider.dart';
import '../components/schedule/event_list_item.dart';

class MainPage extends HookConsumerWidget {
  MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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