import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../model/entity/schedule_candidate.dart';
import '../../../../model/entity/voter.dart';
import '../../../../provider/event_detail_provider.dart';

class EventDetailPage extends HookConsumerWidget {
  const EventDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detail = ref.watch(eventDetailProvider);
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final loading = useState(true);
    final maxFitnessValue = detail.scheduleCandidates
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
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        Future<void>.microtask(() async {
          await ref.read(eventDetailProvider.notifier)
              .getEventInformation(args['id']);
          loading.value = false;
        });
      });
      return null;
    }, const []);


    return Scaffold(
        appBar: AppBar(
          title: loading.value ? const Text('読み込み中...') : Text(detail.event.name),
        ),
        body: loading.value ? Container(
            alignment: Alignment.center,
            child: const CircularProgressIndicator(
              color: Colors.green,
            )
        ) : SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 20,
                      child: Container(
                          margin: const EdgeInsets.all(20),
                          child: const Icon(
                            Icons.event_available,
                            size: 40,
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
                    )
                  ],
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
                height: 300,
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
                    final isEditor = detail.participants.firstWhereOrNull((element) => element.user_id == 1)?.label == 1;
                    final isDecided = detail.event.getText() == candidate.getText();
                    return Container(
                      color: fitnessValue == maxFitnessValue ? Colors.lightGreenAccent : Colors.transparent,
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
                                        Expanded(
                                          flex: 5,
                                          child: SvgPicture.asset(
                                            "assets/images/icons/circle.svg",
                                            width: 10,
                                            height: 10,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Text(": ${ableVoters.length}"),
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: SvgPicture.asset(
                                            "assets/images/icons/triangle.svg",
                                            width: 10,
                                            height: 10,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Text(": ${maybeVoters.length}"),
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: SvgPicture.asset(
                                            "assets/images/icons/clear.svg",
                                            width: 10,
                                            height: 10,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Text(": ${unableVoters.length}"),
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
                                                    child: const Text(
                                                        '決定',
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.normal,
                                                            fontSize: 12
                                                        )
                                                    )
                                                ): ElevatedButton(
                                                  child: const Text(
                                                      '決定',
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.normal,
                                                          fontSize: 12
                                                      )
                                                  ),
                                                  onPressed: () {
                                                    // TODO APIを叩いてイベントのstart_at, end_atを更新し、再度イベントを読み込むようにする
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
              ),
              SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0, bottom: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        child: Row(
                          children: const [
                            Icon(
                              Icons.edit_calendar
                            ),
                            Text('出欠編集')
                          ],
                        ),
                        onPressed: () {
                          // TODO event_idを渡し、それに基づく処理を行わせる
                          Navigator.of(context).pushNamed("/schedule/attendance");
                        },
                      ),
                      ElevatedButton(
                        child: Row(
                          children: const [
                            Icon(
                                Icons.edit_sharp
                            ),
                            Text('イベント編集')
                          ],
                        ),
                        onPressed: () {
                          // TODO event_idを渡し、それに基づく処理を行わせる
                          Navigator.of(context).pushNamed("/schedule/new");
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }
}