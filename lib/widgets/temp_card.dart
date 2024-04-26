import 'package:flutter/material.dart';
import 'package:weather_app_steadfastit/widgets/degree_text.dart';

class TemperatureCard extends StatelessWidget {
  final String iconAsset;
  final num degree;

  const TemperatureCard({Key? key, required this.iconAsset, required this.degree}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 141,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Column(
        children: [
          Text(
            "Now",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Image.asset(iconAsset, height: 16, width: 16,),
          DegreeText(degree: degree, textStyle: Theme.of(context).textTheme.titleSmall,)
        ],
      ),
    );
  }
}
