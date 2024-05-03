import 'package:weather_app_steadfastit/models/Astro.dart';
import 'package:weather_app_steadfastit/models/Day.dart';
import 'package:weather_app_steadfastit/models/HourTemperature.dart';

class ForecastDay {
  String date;
  int date_epoch;
  Day day;
  Astro astro;
  List<HourTemperature> hours;

  ForecastDay({
    required this.date,
    required this.date_epoch,
    required this.day,
    required this.astro,
    required this.hours
  });

  factory ForecastDay.fromJson(Map<String, dynamic> json) {
    return ForecastDay(
      date: json['date'],
      date_epoch: json['date_epoch'],
      day: Day.fromJson(json['day']),
      astro: Astro.fromJson(json['astro']),
      hours: (json['hour'] as List)
          .map((h) => HourTemperature.fromJson(h))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'date_epoch': date_epoch,
      'day': day.toJson(),
      'astro': astro.toJson(),
      'hours' : hours
    };
  }
}
