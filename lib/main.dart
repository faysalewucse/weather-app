import 'package:flutter/material.dart';
import 'package:weather_app_steadfastit/helper/colors.dart';
import 'package:weather_app_steadfastit/helper/gaps.dart';
import 'package:weather_app_steadfastit/helper/image_assets.dart';
import 'package:weather_app_steadfastit/theme/light_theme.dart';
import 'package:weather_app_steadfastit/widgets/degree_text.dart';
import 'package:weather_app_steadfastit/widgets/temp_card.dart';
import 'package:weather_app_steadfastit/widgets/toggle_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(top: 60),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).colorScheme.primary
            ],
            stops: const [0, 1],
          ),
        ),
        child: Column(
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
            VERTICAL_GAP_20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  PngAssets.PARTLY_CLOUDY_1,
                  height: 130,
                  width: 135,
                ),
                HORIZONTAL_GAP_28,
                const DegreeText(degree: 13)
              ],
            ),
            Text(
              "Partly Cloud  -  H:17o  L:4o",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            VERTICAL_GAP_32,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ToggleButton(
                  label: "Today",
                  color:
                      Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                ),
                HORIZONTAL_GAP_8,
                ToggleButton(
                  label: "Next Day",
                  color: BLACK.withOpacity(0.1),
                ),
              ],
            ),
            Expanded(
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) => const TemperatureCard(
                        iconAsset: PngAssets.PARTLY_CLOUDY_1, degree: 13),
                    separatorBuilder: (_, index) => Container(),
                    itemCount: 7))
          ],
        ),
      ),
    );
  }
}
