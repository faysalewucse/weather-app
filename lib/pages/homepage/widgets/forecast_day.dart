import 'package:flutter/material.dart';
import 'package:weather_app_steadfastit/helper/colors.dart';
import 'package:weather_app_steadfastit/helper/gaps.dart';
import 'package:weather_app_steadfastit/helper/image_assets.dart';
import 'package:weather_app_steadfastit/widgets/temp_card.dart';
import 'package:weather_app_steadfastit/widgets/toggle_button.dart';

class ForecastDay extends StatelessWidget {
  const ForecastDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ToggleButton(
              label: "Today",
              color:
              Theme.of(context).colorScheme.secondary.withOpacity(0.3),
            ),
            HORIZONTAL_GAP_8,
            ToggleButton(
              label: "Next Day",
              color: BLACK.withOpacity(0.2),
            ),
          ],
        ),
        VERTICAL_GAP_32,
        SizedBox(
          height: 158,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) => Padding(
              padding: EdgeInsets.only(left: index == 0 ? 16.0 : 0, right: index == 6 ? 16.0 : 0),
              child: const TemperatureCard(
                selected: true,
                title: "Now",
                iconAsset: PngAssets.PARTLY_CLOUDY_1,
                temperature: 13,
              ),
            ),
            separatorBuilder: (_, index) => HORIZONTAL_GAP_12,
            itemCount: 7,
          ),
        )
      ],
    );
  }
}
