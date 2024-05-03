import 'package:flutter/material.dart';
import 'package:weather_app_steadfastit/helper/gaps.dart';
import 'package:weather_app_steadfastit/models/Weather.dart';
import 'package:weather_app_steadfastit/pages/homepage/widgets/current_location.dart';
import 'package:weather_app_steadfastit/pages/homepage/widgets/current_temperature.dart';
import 'package:weather_app_steadfastit/pages/homepage/widgets/forecast_day.dart';
import 'package:weather_app_steadfastit/pages/homepage/widgets/forecast_info.dart';

class HomepageWidgets extends StatelessWidget {
  final Weather weather;
  final int forecastDay;
  const HomepageWidgets({Key? key, required this.weather, required this.forecastDay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CurrentLocation(location: weather.location, forecastDay: weather.forecast.forecastDays[forecastDay]),
        CurrentTemperature(currentTemp: weather.current, todayTemp: weather.forecast.forecastDays[forecastDay]),
        VERTICAL_GAP_12,
        ForecastDay(hours: weather.forecast.forecastDays[forecastDay].hours),
        VERTICAL_GAP_32,
        ForecastInfo(astro: weather.forecast.forecastDays[forecastDay].astro, currentTemperature: weather.current,)
      ],
    );
  }
}
