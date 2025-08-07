import 'package:flutter/material.dart';
import 'dart:ui';

class GridContainer extends StatelessWidget {
  final String iconPath;
  final String title;

  const GridContainer({super.key, required this.iconPath, required this.title});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Color(0xFFFFFFFF).withValues(alpha: 0.12),
                Color(0xFFFFFFFF).withValues(alpha: 0.05),
              ],
              center: Alignment.center,
              radius: 1.2,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                iconPath,
                height: 28,
                width: 28,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.error, size: 28, color: Colors.white),
              ),
              const SizedBox(height: 4),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 1.2,
                  color: Colors.white60,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
