import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/attend_status.dart';
import 'package:schetify/provider/event_detail_provider.dart';
import 'package:schetify/provider/attendance_check_provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../model/entity/schedule_candidate.dart';

class AttendanceCheckPage extends HookConsumerWidget {
  const AttendanceCheckPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventDetail = ref.watch(eventDetailProvider);
    final attendanceCheck = ref.watch(attendanceCheckProvider);
    final statusList = useState(attendanceCheck.statusList);

    return Scaffold(
        appBar: AppBar(
          title: const Text("出席可能日"),
        ),
        body: Column(
            children: <Widget>[
              Expanded(
                flex: 75, // 割合
                child: ListView.separated(
                  itemCount: eventDetail.scheduleCandidates.candidates.length,
                  itemBuilder: (BuildContext context, int index) {
                    final ScheduleCandidate candidate = eventDetail.scheduleCandidates.candidates.elementAt(index);
                    final AttendStatus? status = statusList.value.firstWhereOrNull((AttendStatus status) {
                      return status.schedule_candidate_id == candidate.id;
                    });
                    return Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              candidate.getText(),
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 5.0),
                                  child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: status?.status == 2 ? const Color(0xff94d500) : const Color(0x2294d500),
                                      child: IconButton(
                                        icon: SvgPicture.asset(
                                          "assets/images/icons/circle.svg",
                                          width: 50,
                                          height: 50,
                                        ),
                                        onPressed: (){
                                          if(status?.status == 2){
                                            final newStatusList = List.of(statusList.value);
                                            newStatusList.remove(status);
                                            statusList.value = newStatusList;
                                          }
                                          else {
                                            final newStatusList = List.of(statusList.value);
                                            newStatusList.remove(status);
                                            newStatusList.add(AttendStatus(schedule_candidate_id: candidate.id ?? -1, status: 2));
                                            statusList.value = newStatusList;
                                          }
                                        },
                                      ),
                                  )
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 5.0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: status?.status == 1 ? const Color(0xff94d500) : const Color(0x2294d500),
                                    child: IconButton(
                                      icon: SvgPicture.asset(
                                        "assets/images/icons/triangle.svg",
                                        width: 50,
                                        height: 50,
                                      ),
                                      onPressed: (){
                                        if(status?.status == 1){
                                          final newStatusList = List.of(statusList.value);
                                          newStatusList.remove(status);
                                          statusList.value = newStatusList;
                                        }
                                        else {
                                          final newStatusList = List.of(statusList.value);
                                          newStatusList.remove(status);
                                          newStatusList.add(AttendStatus(schedule_candidate_id: candidate.id ?? -1, status: 1));
                                          statusList.value = newStatusList;
                                        }
                                      },
                                    ),
                                  )
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 5.0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: status?.status == 0 ? const Color(0xff94d500) : const Color(0x2294d500),
                                    child: IconButton(
                                      icon: SvgPicture.asset(
                                        "assets/images/icons/clear.svg",
                                        width: 50,
                                        height: 50,
                                      ),
                                      onPressed: (){
                                        if(status?.status == 0){
                                          final newStatusList = List.of(statusList.value);
                                          newStatusList.remove(status);
                                          statusList.value = newStatusList;
                                        }
                                        else {
                                          final newStatusList = List.of(statusList.value);
                                          newStatusList.remove(status);
                                          newStatusList.add(AttendStatus(schedule_candidate_id: candidate.id ?? -1, status: 0));
                                          statusList.value = newStatusList;
                                        }
                                      },
                                    ),
                                  )
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                ),
              ),
              Expanded(
                flex: 25, // 割合
                child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0, bottom: 5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          child: const Text('登録せずに戻る'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        ElevatedButton(
                          child: const Text('保存'),
                          onPressed: () {
                            ref.read(attendanceCheckProvider.notifier)
                              .changeStatus(statusList.value);
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                ),
              ),
            ]
        )
    );
  }
}
