import 'package:flutter/material.dart';
import 'dart:ui';

class AddContainer extends StatelessWidget {
  const AddContainer({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions for responsive sizing
    final screenWidth = MediaQuery.of(context).size.width;

    // Calculate responsive sizes
    final padding = screenWidth * 0.05; // 5% of screen width
    final iconSize = screenWidth * 0.1; // 10% of screen width
    final borderRadius = screenWidth * 0.05;
    final fontSizeLarge = screenWidth * 0.045;
    final fontSizeSmall = screenWidth * 0.035;

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Color(0xFFFFFFFF).withValues(alpha: 0.12),
                Color(0xFFFFFFFF).withValues(alpha: 0.05),
              ],
              center: Alignment.center,
              radius: 1.2,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/icons/add.png',
                height: iconSize.clamp(32, 44),
                width: iconSize.clamp(32, 44),
              ),
              SizedBox(width: padding * 0.75),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Invite Friends',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: fontSizeLarge.clamp(14, 18),
                    ),
                  ),
                  Text(
                    'Earn 500 for each friend you invite',
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w400,
                      fontSize: fontSizeSmall.clamp(12, 16),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Image.asset(
                'assets/icons/conIcon.png',
                height: iconSize.clamp(36, 48),
                width: iconSize.clamp(36, 48),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
