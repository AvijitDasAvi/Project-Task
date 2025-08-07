import 'package:flutter/material.dart';

class RewardsContainer extends StatelessWidget {
  const RewardsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          // ignore: deprecated_member_use
          color: Colors.white.withOpacity(0.06),
          width: 1,
        ),

        // ignore: deprecated_member_use
        color: Colors.white.withOpacity(0.06),
      ),
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rewards Earned',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      fontSize: 12,
                      height: 1.2,
                      letterSpacing: 0,
                      // ignore: deprecated_member_use
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
              Spacer(),
              Image.asset('assets/icons/logo.png', height: 48, width: 48),
            ],
          ),
          SizedBox(height: 14),
          Row(
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
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(4),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0xFF8246FB),
            ),
            child: Text(
              'Start Mining',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13,
                height: 1.2,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 14),
          Center(
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
