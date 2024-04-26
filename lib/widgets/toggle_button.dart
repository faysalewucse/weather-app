import 'package:flutter/material.dart';

class ToggleButton extends StatelessWidget {
  final Color? color;
  final String label;
  const ToggleButton({Key? key, this.color, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: color ?? Theme.of(context).colorScheme.primary,
      ),
      child: Center(
        child: Text(label, style: Theme.of(context).textTheme.labelSmall,),
      ),
    );
  }
}
