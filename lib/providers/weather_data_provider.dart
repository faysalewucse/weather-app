import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_steadfastit/controllers/weather_controller.dart';
import 'package:weather_app_steadfastit/models/Weather.dart';

final weatherDataProvider = FutureProvider<Weather?>((ref) => ref.watch(weatherProvider).getCurrentWeather());