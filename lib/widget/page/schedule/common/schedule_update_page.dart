import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/grouping_provider.dart';
import '../../../../model/entity/schedule_update_page_util.dart';
import '../../../../provider/event_detail_provider.dart';
import '../../../../provider/event_update_provider.dart';
import '../../../components/schedule/sub_list_item.dart';

class ScheduleUpdatePage extends HookConsumerWidget {
  ScheduleUpdatePage({Key? key}) : super(key: key);

  final List<ScheduleUpdatePageUtil> util = <ScheduleUpdatePageUtil>[
    ScheduleUpdatePageUtil("予定詳細", "detail", const Icon(Icons.details)),
    ScheduleUpdatePageUtil("日にち設定", "/event/edit/day", const Icon(Icons.calendar_today)),
    ScheduleUpdatePageUtil("席分け設定", "group", const Icon(Icons.table_bar)),
    ScheduleUpdatePageUtil("ラベル設定", "/event/edit/label", const Icon(Icons.label)),
    ScheduleUpdatePageUtil("割り勘設定", "cost", const Icon(Icons.money)),
    ScheduleUpdatePageUtil("目的地:", "/event/edit/destination", const Icon(Icons.room),),
    ScheduleUpdatePageUtil("アンケート設定", "/event/edit/questionnaire", const Icon(Icons.feed)),
    ScheduleUpdatePageUtil("シェア(URL)", "url", const Icon(Icons.add_link)),
  ];

  // tentative variable
  String toggleState = "ON";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
    final notifier = ref.read(eventUpdateProvider.notifier);
    final groupProvider = ref.read(groupingProvider.notifier);
    final editDetail = ref.watch(eventUpdateProvider);
    final detail = ref.watch(eventDetailProvider);
    final hasGroup = useState(true);

    SnackBar alertSnackBar = SnackBar(
      content: const Text('更新に失敗しました。'),
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
          if(args != null) {
            await notifier.getEventInformation(args['id']);
          }
          else {
            await notifier.initialize();
          }
        });
      });
      return null;
    }, const []);

    useEffect((){
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        try{
          groupProvider.sync(editDetail.participants);
          hasGroup.value = true;
        }catch(e){
          hasGroup.value = false;
        }
      });
    }, [editDetail]);
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Column(
          children:[Container(
              color: Colors.green,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: TextFormField(
                      style: const TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      initialValue: detail.event.name,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        filled: true,
                        fillColor: Colors.green,
                        isDense: true,
                        prefixIcon: Container(
                          margin: const EdgeInsets.all(10),
                          child: const Icon(
                            Icons.event_available,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 3),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 3),
                        ),
                      ),
                      onFieldSubmitted: (value) async {
                        await notifier.updateName(value)
                            .then((_){
                          notifier.getEventInformation(args?['id'] ?? -1);
                        }).onError((error, stackTrace) {
                          ScaffoldMessenger.of(context).showSnackBar(alertSnackBar);
                        });
                      }
                  ))
          ),
            editDetail.loading ? Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.6,
                child: const CircularProgressIndicator(
                  color: Colors.green,
                )
            ) : Expanded(child: ListView.separated(
            itemCount: util.length,
            itemBuilder: (BuildContext context, int index) {
              return SubListItem(
                title: util[index].tileName,
                leading: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 44,
                    minWidth: 34,
                    maxHeight: 64,
                    maxWidth: 54),
                  child: util[index].iconName,
                ),
                route: (util[index].routeName == "group") ? ((hasGroup.value) ? "/event/seat" : "/event/seat/new") : util[index].routeName,
                toggle: util[index].tileName == '出席' ? toggleState : '',
                address: util[index].tileName == '目的地:' ? editDetail.event.getLocationText() : '',
                eventId: editDetail.event.id,
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
            ),
          )
        ],
      )
    );
  }
}