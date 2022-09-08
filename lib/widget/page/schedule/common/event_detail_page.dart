import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/widget/dialog/participants_list_dialog.dart';
import '../../../../model/entity/schedule_candidate.dart';
import '../../../../model/entity/voter.dart';
import '../../../../provider/event_detail_provider.dart';

class EventDetailPage extends HookConsumerWidget {
  const EventDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detail = ref.watch(eventDetailProvider);
    final notifier = ref.read(eventDetailProvider.notifier);
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final maxFitnessValue = useState(-1);

    Future<void> updateEventInformation() async{
      await ref.read(eventDetailProvider.notifier)
          .getEventInformation(args['id']);
      maxFitnessValue.value = detail.scheduleCandidates
          .toList()
          .map((e) {
        List<Voter> maybeVoters = e
            .voters
            .where((element) => element.status == 1)
            .toList();
        List<Voter> ableVoters = e
            .voters
            .where((element) => element.status == 2)
            .toList();
        return maybeVoters.length + ableVoters.length * 100;
      })
          .toList()
          .reduce(max);
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
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          actions: [
            if(!detail.loading && (detail.participants.firstWhereOrNull((element) => element.user_id == detail.user_id)?.label ?? 'readonly') != 'readonly')TextButton(
              child: Row(
                children: const [
                  Icon(
                      Icons.edit_sharp,
                    color: Colors.white,
                  ),
                  Text('イベント編集', style: TextStyle(color: Colors.white),)
                ],
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("/schedule/new", arguments: {'id': args['id']})
                  .then((_) async {await updateEventInformation();});
              },
            ),
          ],
        ),
        body: Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  color: Colors.green,
                child: Padding(padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.event_available,
                          size: 40,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 10),
                        Text( detail.loading ? '読み込み中...' : (detail.event.name ?? '') , style: const TextStyle(color: Colors.white, fontSize: 26.0,), textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                ),
                ),
                    detail.loading ? Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3),
                      child: const CircularProgressIndicator(
                        color: Colors.green,
                      ),
                    ) : Flexible(
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 10,
                                child: Container(
                                    margin: const EdgeInsets.all(10),
                                    child: const Icon(
                                      Icons.list,
                                      size: 20,
                                    )
                                ),
                              ),
                            Expanded(
                              flex: 80,
                              child: Text(detail.event.description ?? '',
                                style: const TextStyle(
                                  fontFamily: 'SFProDisplay',
                                  color: Color(0xff000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0.0075,
                                ),
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.visible,
                              ),
                            ),

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 10,
                                child: Container(
                                    margin: const EdgeInsets.all(10),
                                    child: const Icon(
                                      Icons.people,
                                      size: 20,
                                    )
                                ),
                              ),
                              Expanded(
                                flex: 50,
                                child: Text('参加ユーザ: ${detail.participants.length}人',
                                  style: const TextStyle(
                                    fontFamily: 'SFProDisplay',
                                    color: Color(0xff000000),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 0.0075,
                                  ),
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                              Expanded(
                                flex: 20,
                                child: Padding(
                                    padding: const EdgeInsets.only(left: 0.0, right: 1.0),
                                    child: SizedBox(
                                      width: 100.0,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(35),
                                            )
                                        ),
                                        onPressed: () async{
                                        },
                                        child: const Text(
                                            '席分け',
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 12
                                            )
                                        ),
                                      ),
                                    )
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                flex: 20,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                                  child: SizedBox(
                                    width: 100.0,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.lightGreen,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(35),
                                          )
                                      ),
                                      child: const Text(
                                          '一覧',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12
                                          )
                                      ),
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (_) => const SimpleDialog(
                                              title: Text("参加者一覧"),
                                              children: <Widget>[
                                                ParticipantsListDialog()
                                              ],
                                            )
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Visibility(
                          // TODO これをタップしたら地図が表示されるように、あと席分け、割り勘等のポップアップが出るボタンを追加する
                          visible: detail.event.cost != null,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 10,
                                  child: Container(
                                      margin: const EdgeInsets.all(10),
                                      child: const Icon(
                                        Icons.currency_yen,
                                        size: 20,
                                      )
                                  ),
                                ),
                                Expanded(
                                  flex: 90,
                                  child: Text('一人当たりの値段: ${detail.event.cost_type == 'total' ? (detail.event.cost ?? 0) ~/ detail.participants.length : detail.event.cost}',
                                    style: const TextStyle(
                                      fontFamily: 'SFProDisplay',
                                      color: Color(0xff000000),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 0.0075,
                                    ),
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.visible,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Visibility(
                          // TODO これをタップしたら地図が表示されるように、あと席分け、割り勘等のポップアップが出るボタンを追加する
                            visible: detail.event.location_name != null,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 10,
                                    child: Container(
                                        margin: const EdgeInsets.all(10),
                                        child: const Icon(
                                          Icons.location_on,
                                          size: 20,
                                        )
                                    ),
                                  ),
                                  Expanded(
                                    flex: 90,
                                    child: Text('${detail.event.location_name ?? ''}  ${detail.event.location_address ?? ''}',
                                      style: const TextStyle(
                                        fontFamily: 'SFProDisplay',
                                        color: Color(0xff000000),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: 0.0075,
                                      ),
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.visible,
                                    ),
                                  )
                                ],
                              ),
                            )
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: ListView.separated(
                            itemCount: detail.scheduleCandidates.length,
                            itemBuilder: (BuildContext context, int index) {
                              final ScheduleCandidate candidate = detail.scheduleCandidates.elementAt(index);
                              final List<Voter> unableVoters = candidate
                                  .voters
                                  .where((element) => element.status == 0)
                                  .toList();
                              final List<Voter> maybeVoters = candidate
                                  .voters
                                  .where((element) => element.status == 1)
                                  .toList();
                              final List<Voter> ableVoters = candidate
                                  .voters
                                  .where((element) => element.status == 2)
                                  .toList();
                              final fitnessValue = maybeVoters.length + ableVoters.length * 100;
                              // TODO 自分のユーザのロールを見るようにする
                              final myLabel = detail.participants.firstWhereOrNull((element) => element.user_id == detail.user_id)?.label ?? 'readonly';
                              final isEditor = (myLabel == 'editor') || (myLabel == 'owner');
                              final isDecided = detail.event.getText() == candidate.getText();
                              return Container(
                                color: Colors.transparent,
                                child: Padding(
                                    padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 10,
                                              child: Visibility(
                                                  visible: isDecided,
                                                  child: const Icon(
                                                      Icons.check
                                                  )
                                              ),
                                            ),
                                            Expanded(
                                              flex: 60,
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      flex: 30,
                                                      child: Text(candidate.getText2())
                                                  ),
                                                  if(fitnessValue == maxFitnessValue.value && detail.event.start_at == null && detail.event.end_at == null)const Expanded(
                                                    flex: 10 ,
                                                    child: Icon(Icons.star,
                                                      color: Colors.green,),
                                                  ),
                                                  Expanded(
                                                    flex: 5,
                                                    child: SvgPicture.asset(
                                                        "assets/images/icons/circle.svg",
                                                        width: 10,
                                                        height: 10,
                                                        color: ((fitnessValue == maxFitnessValue.value && detail.event.start_at == null && detail.event.end_at == null) ? Colors.green : Colors.black)
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 5,
                                                    child: Text(": ${ableVoters.length}", style: TextStyle(color: (fitnessValue == maxFitnessValue.value && detail.event.start_at == null && detail.event.end_at == null) ? Colors.green : Colors.black)),
                                                  ),
                                                  Expanded(
                                                    flex: 5,
                                                    child: SvgPicture.asset(
                                                        "assets/images/icons/triangle.svg",
                                                        width: 10,
                                                        height: 10,
                                                        color: ((fitnessValue == maxFitnessValue.value && detail.event.start_at == null && detail.event.end_at == null) ? Colors.green : Colors.black)
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 5,
                                                    child: Text(": ${maybeVoters.length}", style: TextStyle(color: (fitnessValue == maxFitnessValue.value && detail.event.start_at == null && detail.event.end_at == null) ? Colors.green : Colors.black)),
                                                  ),
                                                  Expanded(
                                                    flex: 5,
                                                    child: SvgPicture.asset(
                                                        "assets/images/icons/clear.svg",
                                                        width: 10,
                                                        height: 10,
                                                        color: ((fitnessValue == maxFitnessValue.value && detail.event.start_at == null && detail.event.end_at == null) ? Colors.green : Colors.black)
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 5,
                                                    child: Text(": ${unableVoters.length}", style: TextStyle(color: (fitnessValue == maxFitnessValue.value && detail.event.start_at == null && detail.event.end_at == null) ? Colors.green : Colors.black)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                                flex: isEditor ? 20 : 0,
                                                child: Visibility(
                                                  visible: isEditor,
                                                  child: Align(
                                                    alignment: Alignment.centerRight,
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(10),
                                                      child: SizedBox(
                                                        width: 120,
                                                        height: 30,
                                                        child: isDecided ? OutlinedButton(
                                                          onPressed: () {},
                                                          style: OutlinedButton.styleFrom(
                                                              shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(35),
                                                              )
                                                          ),
                                                          child: const Text(
                                                              '決定',
                                                              style: TextStyle(
                                                                  fontWeight: FontWeight.normal,
                                                                  fontSize: 12
                                                              )
                                                          ),
                                                        ): ElevatedButton(
                                                          style: OutlinedButton.styleFrom(
                                                              shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(35),
                                                              )
                                                          ),
                                                          child: const Text(
                                                              '決定',
                                                              style: TextStyle(
                                                                  fontWeight: FontWeight.normal,
                                                                  fontSize: 12
                                                              )
                                                          ),
                                                          onPressed: () async{
                                                            // TODO APIを叩いてイベントのstart_at, end_atを更新し、再度イベントを読み込むようにする
                                                            await notifier.updateSchedule(candidate.start_at, candidate.end_at);
                                                            await updateEventInformation();
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                ),
                              );
                            },
                            separatorBuilder: (BuildContext context, int index) => const Divider(),
                          ),
                        )
                      ],
                    ),
                  ),
                  ],
            ),
        ),
        bottomNavigationBar: (!detail.loading) ? SizedBox(
          height: 65,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          )
                      ),
                      icon: const Icon(
                          Icons.edit_calendar
                      ),
                      label: const Text('出欠編集'),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/schedule/attendance")
                          .then((_) async {await updateEventInformation();});
                      },
                    )
                ),
              ],
            ),
          ),
        ) : const SizedBox(height: 0),
    );
  }
}