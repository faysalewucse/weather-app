import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_steadfastit/helper/colors.dart';
import 'package:weather_app_steadfastit/helper/styles.dart';
import 'package:weather_app_steadfastit/models/Weather.dart';
import 'package:weather_app_steadfastit/pages/homepage/widgets/homepage_widgets.dart';
import 'package:weather_app_steadfastit/providers/forecast_provider.dart';
import 'package:weather_app_steadfastit/providers/network_provider.dart';
import 'package:weather_app_steadfastit/providers/weather_data_provider.dart';

class Homepage extends ConsumerWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connectivityStatusProvider = ref.watch(connectivityStatusProviders);

    final weather = ref.watch(weatherDataProvider);
    final forecastDay = ref.watch(forecastDayProvider);

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 50),
        decoration: gradientDecoration,
        child: weather.when(
          data: (weatherData) {
            Weather? weather = weatherData;
            return HomepageWidgets(weather: weather!, forecastDay: forecastDay);
          },
          error: (error, s) => Center(
            child: Text(
              connectivityStatusProvider == ConnectivityStatus.isDisconnected
                  ? "No Internet connection"
                  : "Error Occurred",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(
              color: WHITE,
            ),
          ),
        ),
      ),
    );
  }
}
