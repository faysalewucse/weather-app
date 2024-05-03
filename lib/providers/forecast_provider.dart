import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_steadfastit/utils/toast_message.dart';

final forecastDayProvider = StateNotifierProvider<ForecastDayNotifier, int>(
    (ref) => ForecastDayNotifier());

class ForecastDayNotifier extends StateNotifier<int> {
  ForecastDayNotifier() : super(0);

  void increaseDay() {
    if (state < 2) {
      state++;
    }
  }

  void decreaseDay() {
    if (state > 0) {
      state--;
    }
  }

  void resetDay() {
    state = 0;
  }
}
