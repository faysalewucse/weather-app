import 'package:weather_app_steadfastit/models/Forecast.dart';
import 'package:weather_app_steadfastit/models/Location.dart';
import 'package:weather_app_steadfastit/models/Temperature.dart';

class Weather {
  final Location location;
  final Temperature current;
  final Forecast forecast;

  Weather({required this.location, required this.current, required this.forecast});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      location: Location.fromJson(json['location']),
      current: Temperature.fromJson(json['current']),
      forecast: Forecast.fromJson(json['forecast']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'location': location.toJson(),
      'current': current.toJson(),
      'forecast': forecast.toJson(),
    };
  }
}
