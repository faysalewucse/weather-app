import 'package:flutter/material.dart';
import 'package:weather_app_steadfastit/helper/colors.dart';
import 'package:weather_app_steadfastit/helper/gaps.dart';
import 'package:weather_app_steadfastit/helper/image_assets.dart';
import 'package:weather_app_steadfastit/widgets/temperature_text.dart';

class CurrentTemperature extends StatelessWidget {
  const CurrentTemperature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              PngAssets.PARTLY_CLOUDY_1,
              height: 130,
              width: 135,
            ),
            HORIZONTAL_GAP_28,
            const TemperatureText(
              temperature: 13,
            ),
          ],

        ),
        Text(
          "Partly Cloud  -  H:17o  L:4o",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
