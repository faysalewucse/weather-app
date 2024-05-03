import 'package:flutter/material.dart';
import 'package:weather_app_steadfastit/helper/colors.dart';
import 'package:weather_app_steadfastit/helper/gaps.dart';
import 'package:weather_app_steadfastit/helper/image_assets.dart';
import 'package:weather_app_steadfastit/helper/styles.dart';
import 'package:weather_app_steadfastit/models/Astro.dart';
import 'package:weather_app_steadfastit/models/Temperature.dart';
import 'package:weather_app_steadfastit/pages/homepage/utils.dart';
import 'package:weather_app_steadfastit/pages/homepage/widgets/card_clipper.dart';
import 'package:weather_app_steadfastit/pages/homepage/widgets/forecast_info_card.dart';

class ForecastInfo extends StatelessWidget {
  final Astro astro;
  final Temperature currentTemperature;

  const ForecastInfo({Key? key, required this.astro, required this.currentTemperature}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Column(
            children: [
              VERTICAL_GAP_24,
              Expanded(
                child: ClipPath(
                  clipper: CurvedTopClipper(),
                  child: Container(
                    decoration: gradientDecoration,
                    child: Center(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: ListView(
                          children: [
                            ForecastInfoCard(
                              assetImage: PngAssets.SUN_FOG,
                              body: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Sunset",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                      Text(
                                        astro.sunset,
                                        style:
                                        Theme.of(context).textTheme.titleLarge,
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Sunrise",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                      Text(
                                        astro.sunrise,
                                        style:
                                        Theme.of(context).textTheme.titleLarge,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            VERTICAL_GAP_12,
                            ForecastInfoCard(
                              assetImage: PngAssets.SUN_1,
                              body: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Uv index",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                      Text(
                                        "${currentTemperature.uv.ceil()} ${getUVLevel(currentTemperature.uv)}",
                                        style:
                                        Theme.of(context).textTheme.titleLarge,
                                      )
                                    ],
                                  ),
                                  const SizedBox()
                                ],
                              ),
                            ),
                          ],
                        )
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned.fill(
            top: 0,
            child: Align(
              alignment: Alignment.topCenter,
              child: Stack(
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        color: PRIMARY,
                        borderRadius: BorderRadius.circular(35)),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Stack(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: gradientRoundedDecorationReverse,
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                PngAssets.ARROW_UP,
                                height: 10,
                                width: 12,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
