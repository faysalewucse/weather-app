import 'dart:math';

import 'package:flutter/cupertino.dart';

class CurvedTopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final roundingHeight = size.height * 3 / 5;
    final filledRectangle =
    Rect.fromLTRB(0, roundingHeight, size.width, size.height);

    final roundingRectangle = Rect.fromLTRB(
      -40,
      0,
      size.width + 50,
      roundingHeight * 2,
    );

    final path = Path();
    path.addRect(filledRectangle);

    path.arcTo(roundingRectangle, -pi, pi, true);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
