import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_steadfastit/api/error_handler.dart';
import 'package:weather_app_steadfastit/services/weather_service.dart';

class WeatherController{
  Future<void> getCurrentWeather({required double lat, required double long}) async{
    try{
      await WeatherService.getCurrentWeather(lat: lat, long: long);
    }
    catch(err){
      showApiErrorMessage(err);
    }
  }
}

final weatherProvider = Provider<WeatherController>((ref) => WeatherController());