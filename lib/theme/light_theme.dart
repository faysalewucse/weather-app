import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app_steadfastit/helper/colors.dart';
import 'package:weather_app_steadfastit/helper/text_styles.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: GoogleFonts.poppins().fontFamily,
  colorScheme: const ColorScheme.light(
    primary: Color(0xff123597),
    secondary: Color(0xff97ABFF),
    surface: WHITE,
  ),
  textTheme: TextTheme(
    titleSmall: WHITE_400_12,
    titleMedium: WHITE_400_14,
    headlineMedium: WHITE_700_32,
    bodySmall: WHITE_500_18,
    bodyLarge: WHITE_300_122,
    labelSmall: WHITE_700_14
  ),
);