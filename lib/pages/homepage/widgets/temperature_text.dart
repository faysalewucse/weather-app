import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app_steadfastit/helper/colors.dart';

class TemperatureText extends StatelessWidget {
  final num temperature;
  final double? fontSize;
  final double? degreeFontSize;
  final double? offset;

  const TemperatureText({
    Key? key,
    required this.temperature,
    this.fontSize,
    this.offset, this.degreeFontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '${temperature.ceil()}',
            style:
                GoogleFonts.poppins(fontSize: fontSize ?? 100),
          ),
          WidgetSpan(
            child: Transform.translate(
              offset: Offset(0.0, offset ?? -60.0),
              child: Text(
                'o',
                style: TextStyle(fontSize: degreeFontSize ?? 30, color: WHITE),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
