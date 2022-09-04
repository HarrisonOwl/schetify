import 'dart:async';

import 'package:dio/dio.dart';
import 'package:schetify/model/entity/test_weather.dart';
import 'package:schetify/util/api_client.dart';
import 'package:schetify/util/constants.dart';


class TestRepository{

  final APIClient apiClient = APIClient();

  Future<List<TestWeather>> GetTestWeathers() async {
    final response = await apiClient.get("all", false);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return List<TestWeather>.from(response.data.map((element)=> TestWeather.fromJson(element)));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception(response.statusCode);
    }
  }
}