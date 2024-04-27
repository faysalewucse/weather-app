import 'package:flutter/material.dart';

class DegreeText extends StatelessWidget {
  final num temperature;
  final TextStyle? temperatureTextStyle;
  final TextStyle? degreeTextStyle;
  const DegreeText({Key? key, required this.temperature, this.degreeTextStyle, this.temperatureTextStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$temperature",
          style: temperatureTextStyle ?? Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          "o",
          style: degreeTextStyle ?? Theme.of(context).textTheme.headlineMedium,
        )
      ],
    );
  }
}
