import 'package:weather_app_steadfastit/models/ForecastDay.dart';

class Forecast {
  final List<ForecastDay> forecastDays;

  Forecast({required this.forecastDays});

  factory Forecast.fromJson(Map<String, dynamic> json) => Forecast(
    forecastDays: (json['forecastDays'] as List)
        .map((day) => ForecastDay.fromJson(day))
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'forecastDays': forecastDays.map((day) => day.toJson()).toList(),
  };
}
