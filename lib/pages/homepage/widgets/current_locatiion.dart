import 'package:flutter/material.dart';
import 'package:weather_app_steadfastit/helper/gaps.dart';
import 'package:weather_app_steadfastit/helper/image_assets.dart';

class CurrentLocation extends StatelessWidget {
  const CurrentLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Dhaka",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        VERTICAL_GAP_12,
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
      ],
    );
  }
}
