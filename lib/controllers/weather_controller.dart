import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_steadfastit/api/error_handler.dart';
import 'package:weather_app_steadfastit/controllers/location_controller.dart';
import 'package:weather_app_steadfastit/models/Weather.dart';
import 'package:weather_app_steadfastit/services/weather_service.dart';

final weatherProvider =
    Provider<WeatherController>((ref) => WeatherController());

class WeatherController {
  final locationController = Location();

  Future<Weather?> getCurrentWeather() async {
    try {
      final position = await locationController.getCurrentLocation();
      final response = await WeatherService.getCurrentWeather(
          lat: position?.latitude ?? 0.0, long: position?.longitude ?? 0.0);

      Weather weather = Weather.fromJson(response.data);

      return weather;
    } catch (err) {
      showApiErrorMessage(err);
      return null;
    }
  }
}
