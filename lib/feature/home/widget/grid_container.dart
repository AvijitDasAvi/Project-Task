import 'package:flutter/material.dart';

class GridContainer extends StatelessWidget {
  final String iconPath;
  final String title;

  const GridContainer({super.key, required this.iconPath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF).withOpacity(0.08),
        border: Border.all(
          width: 1,
          // ignore: deprecated_member_use
          color: Colors.white.withOpacity(0.06),
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            height: 24,
            width: 24,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.error, size: 24, color: Colors.white),
          ),
          const SizedBox(height: 6),
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
    );
  }
}
