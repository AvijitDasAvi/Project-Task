import 'package:flutter/material.dart';

class SocialContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  const SocialContainer({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/icons/fireCon.png', height: 38, width: 38),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 13.0,
                height: 1.2,
                color: Colors.white,
              ),
            ),
            Text(
              subTitle,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontSize: 10.0,
                height: 1.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Spacer(),
        Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white54),
      ],
    );
  }
}
