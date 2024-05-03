import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_steadfastit/helper/colors.dart';
import 'package:weather_app_steadfastit/helper/gaps.dart';
import 'package:weather_app_steadfastit/helper/image_assets.dart';
import 'package:weather_app_steadfastit/models/ForecastDay.dart';
import 'package:weather_app_steadfastit/models/Location.dart';
import 'package:weather_app_steadfastit/pages/homepage/utils.dart';
import 'package:weather_app_steadfastit/providers/temperature_type_provider.dart';

class CurrentLocation extends ConsumerWidget {
  final Location? location;
  final ForecastDay forecastDay;

  const CurrentLocation(
      {Key? key, required this.location, required this.forecastDay})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedType = ref.watch(temperatureTypeProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    location?.name ?? "",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  HORIZONTAL_GAP_8,
                  const Icon(Icons.edit, color: WHITE,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    PngAssets.LOCATION_1,
                    height: 16,
                    width: 16,
                  ),
                  HORIZONTAL_GAP_8,
                  Text(
                    "Current Location",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
              Text(
                formatDate(forecastDay.date),
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("C",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Switch(
                  value: selectedType == TemperatureType.fahrenheit,
                  onChanged: (_) {
                    ref.read(temperatureTypeProvider.notifier).toggle();
                  },
                  activeTrackColor: PRIMARY,
                  activeColor: WHITE,
                ),
                Text("F",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
