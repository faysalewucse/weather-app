import 'package:weather_app_steadfastit/models/Astro.dart';
import 'package:weather_app_steadfastit/models/Day.dart';
import 'package:weather_app_steadfastit/models/HourTemperature.dart';

class ForecastDay {
  String date;
  int dateEpoch;
  Day day;
  Astro astro;
  List<HourTemperature> hours;

  ForecastDay({
    required this.date,
    required this.dateEpoch,
    required this.day,
    required this.astro,
    required this.hours
  });

  factory ForecastDay.fromJson(Map<String, dynamic> json) {
    return ForecastDay(
      date: json['date'],
      dateEpoch: json['date_epoch'],
      day: Day.fromJson(json['day']),
      astro: Astro.fromJson(json['astro']),
      hours: List<HourTemperature>.from(json['hour'].map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'date_epoch': dateEpoch,
      'day': day.toJson(),
      'astro': astro.toJson(),
    };
  }
}
