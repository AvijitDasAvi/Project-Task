import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final Color fillColor;
  const Indicator({super.key, required this.fillColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(999),
        border: Border.all(width: 1, color: Colors.white12),
      ),
    );
  }
}
