import 'package:flutter/material.dart';

class ToggleButton extends StatelessWidget {
  final Color? color;
  final String label;
  final Function() onPressed;
  const ToggleButton({Key? key, this.color, required this.label, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: color ?? Theme.of(context).colorScheme.primary,
        ),
        child: Center(
          child: Text(label, style: Theme.of(context).textTheme.labelSmall,),
        ),
      ),
    );
  }
}
