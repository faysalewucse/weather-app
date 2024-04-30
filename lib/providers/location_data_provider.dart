import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app_steadfastit/controllers/location_controller.dart';

final locationDataProvider = FutureProvider<Position?>((ref) => ref.watch(locationProvider).getCurrentLocation());