import 'package:flutter_riverpod/flutter_riverpod.dart';

enum TemperatureType { celsius, fahrenheit }

class TemperatureTypeNotifier extends StateNotifier<TemperatureType> {
  TemperatureTypeNotifier() : super(TemperatureType.celsius);

  void toggle() {
    state = state == TemperatureType.celsius
        ? TemperatureType.fahrenheit
        : TemperatureType.celsius;
  }
}

final temperatureTypeProvider =
    StateNotifierProvider<TemperatureTypeNotifier, TemperatureType>((ref) {
  return TemperatureTypeNotifier();
});
