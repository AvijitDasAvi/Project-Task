import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final Color fillColor;
  const Indicator({super.key, required this.fillColor});

  @override
  Widget build(BuildContext context) {
    // Check if this is the active indicator (purple color)
    bool isActive = fillColor == const Color(0xFF8246FB);

    return Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        gradient: isActive
            ? const LinearGradient(
                colors: [Color(0xFFA746FB), Color(0xFF2A71E3)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              )
            : null,
        color: isActive ? null : fillColor,
        borderRadius: BorderRadius.circular(999),
        border: Border.all(width: 1, color: Colors.white12),
      ),
    );
  }
}
