import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:weather_app_steadfastit/helper/colors.dart';
import 'package:weather_app_steadfastit/theme/light_theme.dart';

LinearGradient linearGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [lightTheme.colorScheme.secondary, lightTheme.colorScheme.primary],
  stops: const [0, 1],
);

LinearGradient linearGradientReverse = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [lightTheme.colorScheme.primary, lightTheme.colorScheme.secondary],
  stops: const [0, 1],
);

LinearGradient linearGradientBorder = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [WHITE.withOpacity(0.2), Colors.transparent],
  stops: const [0, 1],
);

LinearGradient linearGradientTB = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [WHITE.withOpacity(0.2), Colors.transparent],
  stops: const [1, 0],
);

LinearGradient linearGradientBorderReverse = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Colors.transparent,
    WHITE.withOpacity(0.2),
  ],
  stops: const [0, 1],
);

BoxDecoration gradientDecoration = BoxDecoration(
  gradient: linearGradient,
);

BoxDecoration gradientRoundedDecoration = BoxDecoration(
    gradient: linearGradient,
    border: GradientBoxBorder(
      gradient: linearGradientBorder,
      width: 2,
    ),
    borderRadius: BorderRadius.circular(35));

BoxDecoration gradientRoundedSmDecoration = BoxDecoration(
  gradient: linearGradientTB,
  border: GradientBoxBorder(
    gradient: linearGradientBorder,
    width: 2,
  ),
  borderRadius: BorderRadius.circular(16),
);

BoxDecoration gradientRoundedDecorationReverse = BoxDecoration(
    gradient: linearGradient,
    border: GradientBoxBorder(
      gradient: linearGradientBorderReverse,
      width: 2,
    ),
    borderRadius: BorderRadius.circular(35));
