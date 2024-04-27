import 'package:flutter/material.dart';
import 'package:weather_app_steadfastit/helper/gaps.dart';
import 'package:weather_app_steadfastit/helper/styles.dart';
import 'package:weather_app_steadfastit/pages/homepage/widgets/current_locatiion.dart';
import 'package:weather_app_steadfastit/pages/homepage/widgets/current_temperature.dart';
import 'package:weather_app_steadfastit/pages/homepage/widgets/forecast_day.dart';
import 'package:weather_app_steadfastit/pages/homepage/widgets/forecast_info.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.only(top: 47),
        decoration: gradientDecoration,
        child: const Column(
          children: [
            CurrentLocation(),
            VERTICAL_GAP_20,
            CurrentTemperature(),
            VERTICAL_GAP_32,
            ForecastDay(),
            VERTICAL_GAP_32,
            ForecastInfo()
          ],
        ),
      ),
    );
  }
}
