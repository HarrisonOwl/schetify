import 'package:flutter/widgets.dart';

import '../../util/api_client.dart';

class UserRepository{

  final APIClient apiClient = APIClient();

  Future<void> CreateUser(String username) async {
    final response = await apiClient.post("user", {
      "username": username
    }, true);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception(response.toString());
    }
  }
}