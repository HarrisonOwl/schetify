import 'dart:collection';

import 'package:schetify/model/entity/event.dart';
import 'package:schetify/model/entity/event_update_state.dart';
import 'package:schetify/model/entity/participant.dart';
import 'package:schetify/model/entity/schedule_candidate.dart';

import '../../util/api_client.dart';

class EventRepository{

  final APIClient apiClient = APIClient();

  Future<List<Event>> getEvents() async {
    final response = await apiClient.get("events", true);
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
}