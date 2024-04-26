import 'package:flutter/material.dart';

class DegreeText extends StatelessWidget {
  final num degree;
  final TextStyle? textStyle;
  const DegreeText({Key? key, required this.degree, this.textStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          "$degree",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Positioned(
            right: 0,
            top: 12,
            child: Text(
              "o",
              style: textStyle ?? Theme.of(context).textTheme.headlineMedium,
            )),
      ],
    );
  }
}
