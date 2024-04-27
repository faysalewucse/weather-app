import 'package:flutter/material.dart';

class TemperatureText extends StatelessWidget {
  final num temperature;
  final TextStyle? temperatureTextStyle;
  final TextStyle? degreeTextStyle;

  const TemperatureText({
    Key? key,
    required this.temperature,
    this.temperatureTextStyle,
    this.degreeTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$temperature',
          style:
              temperatureTextStyle ?? Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(width: 4),
        Text(
          '°C',
          style:
              degreeTextStyle ?? Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
