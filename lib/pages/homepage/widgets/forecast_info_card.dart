import 'package:flutter/material.dart';
import 'package:weather_app_steadfastit/helper/image_assets.dart';
import 'package:weather_app_steadfastit/helper/styles.dart';

class ForecastInfoCard extends StatelessWidget {
final Widget body;
final String assetImage;
  const ForecastInfoCard({Key? key, required this.body, required this.assetImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: gradientRoundedSmDecoration,
      child: Row(
        children: [
          Image.asset(assetImage, height: 56, width: 56,),
          Expanded(
            child: body,
          )
        ],
      ),
    );
  }
}
