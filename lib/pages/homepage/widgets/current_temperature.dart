import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_steadfastit/helper/colors.dart';
import 'package:weather_app_steadfastit/helper/gaps.dart';
import 'package:weather_app_steadfastit/models/ForecastDay.dart';
import 'package:weather_app_steadfastit/models/Temperature.dart';
import 'package:weather_app_steadfastit/pages/homepage/widgets/temperature_text.dart';
import 'package:weather_app_steadfastit/providers/temperature_type_provider.dart';

class CurrentTemperature extends ConsumerWidget {
  final Temperature? currentTemp;
  final ForecastDay todayTemp;

  const CurrentTemperature(
      {Key? key, required this.currentTemp, required this.todayTemp})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedType = ref.watch(temperatureTypeProvider);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              "https:${currentTemp?.condition.icon}" ?? "",
              scale: 0.5,
            ),
            HORIZONTAL_GAP_8,
            TemperatureText(
              temperature: selectedType == TemperatureType.celsius
                  ? currentTemp?.tempC ?? 0
                  : currentTemp?.tempF ?? 0,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.titleLarge,
              children: [
                TextSpan(
                  text: "${currentTemp?.condition.text}",
                ),
                const TextSpan(
                  text: "  -  ",
                ),
                const TextSpan(
                  text: "H: ",
                ),
                WidgetSpan(
                  child: TemperatureText(
                    temperature: selectedType == TemperatureType.celsius
                        ? todayTemp.day.maxtempC
                        : todayTemp.day.maxtempF,
                    offset: -10,
                    degreeFontSize: 10,
                    fontSize: 22,
                  ),
                ),
                const TextSpan(
                  text: " / L: ",
                ),
                WidgetSpan(
                  child: TemperatureText(
                    temperature: selectedType == TemperatureType.celsius
                        ? todayTemp.day.mintempC
                        : todayTemp.day.mintempF,
                    offset: -10,
                    degreeFontSize: 10,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodySmall,
                children: [
                  const TextSpan(
                    text: "Feels like: ",
                  ),
                  WidgetSpan(
                    child: TemperatureText(
                      temperature: selectedType == TemperatureType.celsius
                          ? currentTemp?.feelslikeC ?? 0
                          : currentTemp?.feelslikeF ?? 0,
                      offset: -10,
                      degreeFontSize: 10,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            HORIZONTAL_GAP_12,
            Row(
              children: [
                const Icon(
                  Icons.wind_power,
                  color: WHITE,
                ),
                HORIZONTAL_GAP_8,
                Text(
                  "${currentTemp?.windMph} mph",
                  style: Theme.of(context).textTheme.titleMedium,
                )
              ],
            )
          ],
        ),
        VERTICAL_GAP_5,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodySmall,
                children: [
                  const TextSpan(
                    text: "Pressure: ",
                  ),
                  TextSpan(
                    text: "${currentTemp?.pressureIn.floor()} In",
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
            ),
            HORIZONTAL_GAP_12,
            Row(
              children: [
                const Icon(
                  Icons.visibility,
                  color: WHITE,
                ),
                HORIZONTAL_GAP_8,
                Text(
                  "${currentTemp?.visKm} km",
                  style: Theme.of(context).textTheme.titleMedium,
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
