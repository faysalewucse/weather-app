import 'package:weather_app_steadfastit/models/ForecastDay.dart';

class Forecast {
  final List<ForecastDay> forecastDays;

  Forecast({required this.forecastDays});

  factory Forecast.fromJson(Map<String, dynamic> json) => Forecast(
    forecastDays: (json['forecastday'] as List)
        .map((day) => ForecastDay.fromJson(day))
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'forecastday': forecastDays.map((day) => day.toJson()).toList(),
  };
}
