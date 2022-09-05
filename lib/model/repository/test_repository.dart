import 'dart:async';
import 'dart:collection';

import 'package:dio/dio.dart';
import 'package:schetify/model/entity/event.dart';
import 'package:schetify/model/entity/test_weather.dart';
import 'package:schetify/util/api_client.dart';
import 'package:schetify/util/constants.dart';

import '../entity/participant.dart';
import '../entity/schedule_candidate.dart';


class TestRepository{

  final APIClient apiClient = APIClient();

  Future<List<TestWeather>> GetTestWeathers() async {
    final response = await apiClient.get("all", false);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print(response.data);
      return List<TestWeather>.from(response.data.map((element)=> TestWeather.fromJson(element)));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception(response.statusCode);
    }
  }

  Future<List<Event>> getEvents() async {
    final data = [
      {
        'id': 1,
        'name': 'お疲れ様会',
        'description': 'hackUのお疲れ様会です。',
        'start_at': '2022-09-16T19:00:00.000',
        'end_at': '2022-09-16T20:00:00.000',
        'location_name': 'ヤフー（株）本社',
        'location_address': '日本、東京都千代田区紀尾井町１−３',
        'location_latitude': 35.679804878221226,
        'location_longitude': 139.7369627,
        'group_num': 4,
        'total_cost': 3,
      },
      {
        'id': 2,
        'name': '歓迎会',
      },
      {
        'id': 3,
        'name': 'カラオケ会',
      }
    ];
    return List<Event>.from(data.map((element)=> Event.fromJson(element)));
  }

  Future<Event> getEvent(int id) async {
    final data = {
      'id': id,
      'name': id % 2 == 0 ? 'お疲れ様会': '飲み会',
      'description': id % 2 == 0 ? 'hackUのお疲れ様会です。' : '飲み会です。',
      'start_at': '2022-09-06T19:00:00.000',
      'end_at': '2022-09-06T20:00:00.000',
      'location_name': 'ヤフー（株）本社',
      'location_address': '日本、東京都千代田区紀尾井町１−３',
      'location_latitude': 35.679804878221226,
      'location_longitude': 139.7369627,
      'group_num': 2,
      'total_cost': 3,
    };
    return Event.fromJson(data);
  }

  Future<List<Participant>> getParticipants(int id) async {
    final data = [
      {
        'user_id': 1,
        'username': 'tester1',
        'label': 1,
        'group_id': 1,
      },
      {
        'user_id': 2,
        'username': 'tester2',
        'label': 1,
        'group_id': 2,
      },
      {
        'user_id': 3,
        'username': 'tester3',
        'label': 1,
        'group_id': 1,
      },
      {
        'user_id': 4,
        'username': 'tester4',
        'label': 1,
        'group_id': 2,
      },
    ];
    return List<Participant>.from(data.map((element)=> Participant.fromJson(element)));
  }

  Future<SplayTreeSet<ScheduleCandidate>> getScheduleCandidates(int id) async {
    final set = SplayTreeSet<ScheduleCandidate>((a, b) => a.getText().compareTo(b.getText()));
    final data = [
      {
        'id': 1,
        'start_at': '2022-09-06T19:00:00.000',
        'end_at': '2022-09-06T20:00:00.000',
        'voters': <Map<String, dynamic>>[
          {
            'user_id': 1,
            'username': 'tester1',
            'status': 2,
          },
          {
            'user_id': 2,
            'username': 'tester2',
            'status': 2,
          },
          {
            'user_id': 3,
            'username': 'tester3',
            'status': 1,
          },
          {
            'user_id': 4,
            'username': 'tester4',
            'status': 2,
          }
        ],
      },
      {
        'id': 2,
        'start_at': '2022-09-07T19:00:00.000',
        'end_at': '2022-09-07T20:00:00.000',
        'voters': <Map<String, dynamic>>[
          {
            'user_id': 1,
            'username': 'tester1',
            'status': 1,
          },
          {
            'user_id': 2,
            'username': 'tester2',
            'status': 2,
          },
          {
            'user_id': 3,
            'username': 'tester3',
            'status': 2,
          },
          {
            'user_id': 4,
            'username': 'tester4',
            'status': 2,
          }
        ],
      },
      {
        'id': 3,
        'start_at': '2022-09-08T19:00:00.000',
        'end_at': '2022-09-08T20:00:00.000',
        'voters': <Map<String, dynamic>>[
          {
            'user_id': 1,
            'username': 'tester1',
            'status': 2,
          },
          {
            'user_id': 2,
            'username': 'tester2',
            'status': 0,
          },
          {
            'user_id': 3,
            'username': 'tester3',
            'status': 1,
          },
          {
            'user_id': 4,
            'username': 'tester4',
            'status': 0,
          }
        ],
      },
      {
        'id': 4,
        'start_at': '2022-09-09T19:00:00.000',
        'end_at': '2022-09-09T20:00:00.000',
        'voters': <Map<String, dynamic>>[
          {
            'user_id': 1,
            'username': 'tester1',
            'status': 0,
          },
          {
            'user_id': 2,
            'username': 'tester2',
            'status': 0,
          },
          {
            'user_id': 3,
            'username': 'tester3',
            'status': 2,
          },
          {
            'user_id': 4,
            'username': 'tester4',
            'status': 2,
          }
        ],
      },
      {
        'id': 5,
        'start_at': '2022-09-10T19:00:00.000',
        'end_at': '2022-09-10T20:00:00.000',
        'voters': <Map<String, dynamic>>[
          {
            'user_id': 1,
            'username': 'tester1',
            'status': 2,
          },
          {
            'user_id': 2,
            'username': 'tester2',
            'status': 2,
          },
          {
            'user_id': 3,
            'username': 'tester3',
            'status': 2,
          },
          {
            'user_id': 4,
            'username': 'tester4',
            'status': 0,
          }
        ],
      },
    ];
    final list = List<ScheduleCandidate>.from(data.map((element)=> ScheduleCandidate.fromJson(element)));
    for (var c in list) { set.add(c); }
    return set;
  }
}