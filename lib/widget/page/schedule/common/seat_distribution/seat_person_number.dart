import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/grouping_provider.dart';

import '../../../../../provider/event_detail_provider.dart';


class SeatPersonNumberPage extends HookConsumerWidget {
  const SeatPersonNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final maxPersonPerGroup = useState(0);
    final groupingNotifer = ref.read(groupingProvider.notifier);
    final detailProvider = ref.watch(eventDetailProvider);
    final isRunning = useState(false);

    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.green,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    color: Colors.green,
                    child: Padding(padding: const EdgeInsets.all(20),
                      child: SizedBox(
                        width: double.infinity,
                        child: Row(
                          children: const [
                            Icon(
                                Icons.people,
                              size: 40,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            Text( '席分け' , style: TextStyle(color: Colors.white, fontSize: 26.0,), textAlign: TextAlign.left),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                      const Text("各グループの最大人数を入力してください:", style: TextStyle(color: Colors.white, fontSize: 16)),
                      Container(
                        width: 130,
                          alignment: const Alignment(0.0, 0.0),
                        child: Row(children: [
                          Container(
                            alignment: const Alignment(0.0, 0.0),
                            height: 100,
                            width: 100,
                            child:TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              initialValue: maxPersonPerGroup.value.toString(),
                              onChanged: (text){
                                if(text!="")maxPersonPerGroup.value = int.parse(text);
                              },
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                floatingLabelBehavior: FloatingLabelBehavior.never,
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
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text("人", style: TextStyle(color: Colors.white, fontSize: 16)),
                        ],)
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0, left: 30.0, right: 30.0, bottom: 30.0),
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
                        onPressed: (maxPersonPerGroup.value > 0 && maxPersonPerGroup.value <= detailProvider.participants.length ) ? () {
                          isRunning.value = true;
                          groupingNotifer.grouping(maxPersonPerGroup.value, detailProvider.participants);
                          Navigator.pushReplacementNamed(context, '/event/seat/result');
                        } : null,
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.grey,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  if (isRunning.value) const CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white))
                ],
              )
          )
        ],
      ),
    );
  }
}