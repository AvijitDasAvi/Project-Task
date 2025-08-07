import 'package:flutter/material.dart';

class TeamContainer extends StatelessWidget {
  final Color color;
  final String iconPath;
  final String name;
  const TeamContainer({
    super.key,
    required this.color,
    required this.iconPath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(width: 1),
          ),
          child: Image.asset(iconPath, height: 64, width: 64),
        ),
        SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13,
            height: 1.2,
            color: Colors.white60,
          ),
        ),
      ],
    );
  }
}
