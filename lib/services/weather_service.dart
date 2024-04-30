import 'package:dio/dio.dart';
import 'package:weather_app_steadfastit/api/api.dart';
import 'package:weather_app_steadfastit/api/api_urls.dart';

class WeatherService {
  static Future<Response> getCurrentWeather(
      {required double lat, required double long}) async {
    return await Api().dio.get(
      GET_CURRENT_WEATHER_WITH_FORECAST_API_URL,
      queryParameters: {"q": "$lat,$long", "key": API_KEY},
    );
  }
}
