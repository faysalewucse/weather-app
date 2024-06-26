import 'package:flutter/material.dart';
import 'package:weather_app_steadfastit/helper/colors.dart';
import 'package:weather_app_steadfastit/helper/gaps.dart';
import 'package:weather_app_steadfastit/helper/styles.dart';
import 'package:weather_app_steadfastit/pages/homepage/widgets/temperature_text.dart';

class TemperatureCard extends StatelessWidget {
  final String title;
  final String iconAsset;
  final num temperature;
  final bool selected;

  const TemperatureCard(
      {Key? key,
      required this.iconAsset,
      required this.temperature,
      required this.title,
      required this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 141,
          decoration: selected
              ? BoxDecoration(
                  color: PRIMARY,
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: WHITE, width: 2),
                )
              : gradientRoundedDecoration,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Image.network(
                "https:$iconAsset",
                height: 48,
                width: 50,
              ),
              TemperatureText(
                temperature: temperature.ceil(),
                fontSize: 14,
                offset: -10,
                degreeFontSize: 10,
              )
            ],
          ),
        ),
        VERTICAL_GAP_5,
        if (selected)
          const Icon(
            Icons.circle,
            color: WHITE,
            size: 12,
          )
      ],
    );
  }
}
