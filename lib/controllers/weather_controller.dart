import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_steadfastit/api/error_handler.dart';
import 'package:weather_app_steadfastit/controllers/location_controller.dart';
import 'package:weather_app_steadfastit/models/Weather.dart';
import 'package:weather_app_steadfastit/services/weather_service.dart';

final weatherProvider =
    Provider<WeatherController>((ref) => WeatherController());

class WeatherController {
  final locationController = Location();

  Future<Weather?> getCurrentWeather({String query = ""}) async {
    try {
      final position = await locationController.getCurrentLocation();

      double lat = position?.latitude ?? 0.0;
      double long = position?.longitude ?? 0.0;

      String latLong = "${lat.toStringAsFixed(2)},${long.toStringAsFixed(2)}";

      final response = await WeatherService.getCurrentWeather(query: query.isEmpty ? latLong : query);

      Weather weather = Weather.fromJson(response.data);

      return weather;
    } catch (err) {
      showApiErrorMessage(err);
      return null;
    }
  }
}
