import 'package:flutter/material.dart';
import 'dart:ui';

class RewardsContainer extends StatelessWidget {
  const RewardsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the progress value. 0.4 represents 40% to match the visual design.
    const double progress = 0.5;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.06),
          width: 1,
        ),
        color: Colors.white.withValues(alpha: 0.06),
      ),
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Wallet Balance',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      fontSize: 12,
                      height: 1.2,
                      letterSpacing: 0,
                      color: Colors.white60,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '1,580 Sats',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      height: 1.2,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const Spacer(),
              Image.asset('assets/icons/logo.png', height: 48, width: 48),
            ],
          ),
          const SizedBox(height: 14),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Progress to Silver',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 1.2,
                  color: Colors.white60,
                ),
              ),
              Text(
                '20,000 Sats away',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 1.2,
                  color: Colors.white60,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Use ClipRRect to ensure the child widgets are clipped with the same border radius.
          ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: SizedBox(
              height: 8,
              child: Stack(
                children: [
                  // This is the background of the progress bar (the "unfilled" part) with glassmorphism effect.
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            colors: [
                              Color(0xFFFFFFFF).withValues(alpha: 0.13),
                              Color(0xFFFFFFFF).withValues(alpha: 0.05),
                            ],
                            center: Alignment.center,
                            radius: 1.2,
                          ),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ),
                  ),
                  // This is the progress indicator (the "filled" part).
                  // FractionallySizedBox sets the width based on the progress value.
                  FractionallySizedBox(
                    widthFactor: progress, // Represents 40% progress.
                    child: Container(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 14),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: const LinearGradient(
                colors: [Color(0xFFA746FB), Color(0xFF2A71E3)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: const Text(
              'Start Mining',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13,
                height: 1.4,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 14),
          const Center(
            child: Text(
              'Complete to unlock Lucky Spin',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                height: 1.2,
                color: Colors.white60,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
