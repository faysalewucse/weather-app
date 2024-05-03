import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app_steadfastit/api/api.dart';
import 'package:weather_app_steadfastit/api/api_urls.dart';

class WeatherService {
  static Future<Response> getCurrentWeather(
      {required double lat, required double long}) async {
    String latLong = "${lat.toStringAsFixed(2)},${long.toStringAsFixed(2)}";

    final response = await Api().dio.get(
      GET_CURRENT_WEATHER_WITH_FORECAST_API_URL,
      queryParameters: {"q": latLong, "days": 3, "key": API_KEY},
    );

    return response;
  }
}
