import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app_steadfastit/api/api.dart';
import 'package:weather_app_steadfastit/api/api_urls.dart';

class WeatherService {
  static Future<Response> getCurrentWeather(
      {required String query}) async {

    final response = await Api().dio.get(
      GET_CURRENT_WEATHER_WITH_FORECAST_API_URL,
      queryParameters: {"q": query, "days": 3, "key": API_KEY},
    );

    return response;
  }
}
