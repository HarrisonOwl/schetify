import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geocoding/geocoding.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';

import '../../../../provider/event_update_provider.dart';

class ScheduleUpdateDestinationPage extends StatefulHookConsumerWidget {
  const ScheduleUpdateDestinationPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => ScheduleUpdateDestinationPageState();
}

class ScheduleUpdateDestinationPageState extends ConsumerState<ScheduleUpdateDestinationPage> {
  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(eventUpdateProvider.notifier);
    final detail = ref.watch(eventUpdateProvider);
    final ValueNotifier<Set<Marker>> markers = useState(
        detail.event.location_latitude != null && detail.event.location_longitude != null ? {
          Marker(
            markerId: const MarkerId('mark'),
            position: LatLng(detail.event.location_latitude!, detail.event.location_longitude!),
          )
        } : {}
    );

    final initialPosition = useState(
        CameraPosition(
          target: detail.event.location_latitude != null && detail.event.location_longitude != null ? LatLng(detail.event.location_latitude!, detail.event.location_longitude!) : const LatLng(35.682947, 139.736707),
          zoom: 18.0,
        )
    );

    SnackBar nameAlertSnackBar = SnackBar(
      content: const Text('地点名を入力してください'),
      action: SnackBarAction(
        label: '閉じる',
        onPressed: (){
          //閉じるが押された時行いたい処理
        },
      ),
    );

    SnackBar addressAlertSnackBar = SnackBar(
      content: const Text('住所を入力してください'),
      action: SnackBarAction(
        label: '閉じる',
        onPressed: (){
          //閉じるが押された時行いたい処理
        },
      ),
    );

    final ValueNotifier<String?> name = useState(detail.event.location_name);
    final ValueNotifier<String?> address = useState(detail.event.location_address);

    Future<void> searchPlace() async {
      final backupMarkers = markers.value;
      markers.value = {};
      Prediction? p = await PlacesAutocomplete.show(
        context: context,
        apiKey: const String.fromEnvironment('API_KEY'),
        types: [],
        strictbounds: false,
        mode: Mode.fullscreen, // Mode.fullscreen
        language: "ja",
        components: [Component(Component.country, "jp")],
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.green[200],
          contentPadding: const EdgeInsets.only(left:10, right:10, top: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(80.0),
            borderSide: BorderSide(
              color: Colors.green[200]!,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(80.0),
            borderSide: BorderSide(
              color: Colors.green[200]!,
            ),
          ),
        )
      );
      if(p != null) {
        final description = p.description;
        List? locations = await locationFromAddress(description ?? "?");
        if(locations.isNotEmpty) {
          final latLng = LatLng(
              locations.first.latitude ?? 0.0,
              locations.first.longitude ?? 0.0
          );
          initialPosition.value = CameraPosition(
            target: latLng,
            zoom: 18.0,
          );

          final info = description?.split(' ') ?? [];
          // 住所情報を取得
          if(info.isNotEmpty) {
            address.value = info[0];
          }
          // 建物名の情報を取得(あれば)
          if(info.length > 1) {
            name.value = info[1];
          }

          markers.value = {
            Marker(
              markerId: const MarkerId('mark'),
              position: latLng,
            )
          };
        }
      }
      else {
        markers.value = backupMarkers;
      }
    }

    Future<void> stickPin(LatLng latLng) async {
      // 検索していた時の住所情報、建物名を初期化
      address.value = null;
      name.value = null;
      List<Placemark> placeMarks = await placemarkFromCoordinates(latLng.latitude, latLng.longitude);
      if(placeMarks.isNotEmpty) {
        name.value = placeMarks.first.name;
        address.value = placeMarks.first.street;
      }
      initialPosition.value = CameraPosition(
        target: latLng,
        zoom: 18.0,
      );
      markers.value = {
        Marker(
          markerId: const MarkerId('mark'),
          position: latLng,
        )
      };
    }

    return Scaffold(
      appBar: AppBar(
          title: const Text("目的地設定"),
          actions: [
            IconButton(
                icon: const Icon(Icons.search),
                onPressed: searchPlace
            )
          ]
      ),
      body: Column(
        children: markers.value.isEmpty ? <Widget>[
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Color.fromRGBO(200, 200, 200, 1.0)),
              child: const Center(
                child: Text("目的地をタップしてください"),
              ),
            )
          ),
          Expanded(
            flex: 95,
            child: GoogleMap(
              mapType: MapType.hybrid,
              initialCameraPosition: initialPosition.value,
              onMapCreated: (GoogleMapController controller) {
                if(_controller.isCompleted) {
                  _controller.complete(controller);
                }
              },
              markers: markers.value,
              zoomControlsEnabled: false,
              onTap: stickPin,
            ),
          ),
        ] : <Widget>[
          Expanded(
            flex: 65,
              child: GoogleMap(
              mapType: MapType.hybrid,
              initialCameraPosition: initialPosition.value,
              onMapCreated: (GoogleMapController controller) {
                if(_controller.isCompleted) {
                  _controller.complete(controller);
                }
              },
              markers: markers.value,
              zoomControlsEnabled: false,
              zoomGesturesEnabled: false,
              scrollGesturesEnabled: false
          )),
          Expanded(flex: 30,
          child: Container(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
              color: Colors.grey[150],
              child: Column(
                children: [
                  const SizedBox(
                    width: double.infinity,
                    child: Text('地点名', textAlign: TextAlign.left),
                  ),
                  TextFormField(
                    initialValue: name.value ?? '',
                    onChanged: (value){ name.value = value; },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        borderSide: const BorderSide(
                          color: Colors.black26,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        borderSide: const BorderSide(
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  const SizedBox(
                    width: double.infinity,
                    child: Text('住所', textAlign: TextAlign.left),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(
                          color: Colors.black26,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    initialValue: address.value ?? '',
                    onChanged: (value){ address.value = value; },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 160,
                          child: ElevatedButton.icon(
                            icon: const Icon(
                              Icons.pin_drop,
                              color: Colors.white,
                            ),
                            label: const Text('ピンを外す'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35),
                                )
                            ),
                            onPressed: () {
                              markers.value = {};
                            },
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 160,
                          child: ElevatedButton.icon(
                            icon: const Icon(
                              Icons.save_as,
                              color: Colors.white,
                            ),
                            label: const Text('保存'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35),
                                )
                            ),
                            onPressed: () async {
                              if(name.value == null || name.value == "") {
                                ScaffoldMessenger.of(context).showSnackBar(nameAlertSnackBar);
                              }
                              else if(address.value == null || address.value == "") {
                                ScaffoldMessenger.of(context).showSnackBar(addressAlertSnackBar);
                              }
                              else {
                                await notifier.updateLocationInformation(
                                    name.value!,
                                    address.value!,
                                    markers.value.first.position.latitude,
                                    markers.value.first.position.longitude
                                ).then((status){
                                  Navigator.pop(context);
                                });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
          ),)
        ]
      ),
    );
  }
}
