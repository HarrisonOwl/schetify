import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:schetify/model/entity/event.dart';
import 'package:schetify/model/entity/event_update_state.dart';
import 'package:schetify/model/entity/participant.dart';
import 'package:schetify/model/entity/schedule_candidate.dart';

import '../../util/api_client.dart';
import '../entity/attend_status.dart';
import '../entity/event_notification.dart';

class EventRepository{

  final APIClient apiClient = APIClient();

  Future<List<EventNotification>> getNotifications() async {
    final response = await apiClient.get("notifications", true);
    if (response.statusCode == 200) {
      return List<EventNotification>.from(response.data.map((element)=> EventNotification.fromJson(element)));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception(response.toString());
    }
  }

  Future<List<Event>> getEvents() async {
    final response = await apiClient.get("events", true);
    debugPrint("loading...");
    if (response.statusCode == 200) {
      return List<Event>.from(response.data.map((element)=> Event.fromJson(element)));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception(response.toString());
    }
  }

  Future<EventUpdateState> getEventInformation(int id) async {
    final response = await apiClient.get("events/$id", true);
    if (response.statusCode == 200) {
      final data = response.data['event'];
      final event = Event.fromJson(data);
      final participants = List<Participant>.from(data['users'].map((element)=> Participant.fromJson(element)));
      final candidates = SplayTreeSet<ScheduleCandidate>((a, b) => a.getText().compareTo(b.getText()));
      final candidatesList = List<ScheduleCandidate>.from(data['candidates'].map((element)=> ScheduleCandidate.fromJson(element)));
      for (var c in candidatesList) { candidates.add(c); }
      final EventUpdateState state = EventUpdateState(
          event: event,
          scheduleCandidates: candidates,
          participants: participants,
          loading: false,
          user_id: response.data['user_id']
      );
      return state;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception(response.toString());
    }
  }

  Future<void> updateEvent(int id, Map<String, dynamic> json) async {
    final response = await apiClient.put("events/$id", json, true);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception(response.toString());
    }
  }

  Future<void> updateParticipants(int id, List<Participant> list) async {
    var data = list.map((e) => e.toJson()).toList();
    for (var element in data) {
      element['id'] = element['relation_id'];
      element.remove('relation_id');
    }
    final response = await apiClient.dynamicPut("events/$id/user_relations", data, true);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception(response.toString());
    }
  }

  Future<void> updateScheduleCandidates(int id, List<Map<String, dynamic>> data) async {
    final response = await apiClient.dynamicPut("events/$id/schedule_candidates", data, true);
    if (response.statusCode == 204) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception(response.toString());
    }
  }

  Future<int> createEvent(data) async {
    final response = await apiClient.post("events", data, true);
    if (response.statusCode == 201) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return response.data['event_id'];
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception(response.toString());
    }
  }

  Future<void> createUserEvents(String id) async {
    final response = await apiClient.post("events/$id/user_relations", {}, true);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception(response.toString());
    }
  }

  Future<void> updateStatus(id, List<AttendStatus> statusList) async {
    final data = statusList.map((e) => e.toJson()).toList();
    final response = await apiClient.dynamicPut("events/$id/attend_statuses", data, true);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception(response.toString());
    }
  }

  Future<List<AttendStatus>> getStatusList(int id) async {
    final response = await apiClient.get("events/$id/attend_statuses", true);
    if (response.statusCode == 200) {
      final list = List<AttendStatus>.from(response.data.map((element)=> AttendStatus.fromJson(element)));
      return list;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception(response.toString());
    }
  }
}