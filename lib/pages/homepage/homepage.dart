import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app_steadfastit/helper/gaps.dart';
import 'package:weather_app_steadfastit/helper/styles.dart';
import 'package:weather_app_steadfastit/pages/homepage/widgets/current_locatiion.dart';
import 'package:weather_app_steadfastit/pages/homepage/widgets/current_temperature.dart';
import 'package:weather_app_steadfastit/pages/homepage/widgets/forecast_day.dart';
import 'package:weather_app_steadfastit/pages/homepage/widgets/forecast_info.dart';
import 'package:weather_app_steadfastit/providers/location_data_provider.dart';

class Homepage extends ConsumerWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final location = ref.watch(locationDataProvider);

    return Scaffold(
      body: Container(
          height: double.infinity,
          padding: const EdgeInsets.only(top: 47),
          decoration: gradientDecoration,
          child: location.when(
              data: (locationData) {
                Position? position = locationData;
                return const Column(
                  children: [
                    CurrentLocation(),
                    VERTICAL_GAP_20,
                    CurrentTemperature(),
                    VERTICAL_GAP_32,
                    ForecastDay(),
                    VERTICAL_GAP_32,
                    ForecastInfo()
                  ],
                );
              },
              error: (error, s) => Container(),
              loading: () => const CircularProgressIndicator())),
    );
  }
}
