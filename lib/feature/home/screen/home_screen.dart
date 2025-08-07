import 'package:flutter/material.dart';
import 'package:project_task/feature/home/widget/add_container.dart';
import 'package:project_task/feature/home/widget/grid_container.dart';
import 'package:project_task/feature/home/widget/indicator.dart';
import 'package:project_task/feature/home/widget/rewards_container.dart';
import 'package:project_task/feature/home/widget/social_container.dart';
import 'package:project_task/feature/home/widget/task_container.dart';
import 'package:project_task/feature/home/widget/team_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> gridData = [
      {'iconPath': 'assets/icons/fire.png', 'title': 'Daily Streak'},
      {'iconPath': 'assets/icons/chese.png', 'title': 'Prize Pool'},
      {'iconPath': 'assets/icons/gift.png', 'title': 'Scratch Card'},
      {'iconPath': 'assets/icons/dollar.png', 'title': 'Play to Earn'},
      {'iconPath': 'assets/icons/king.png', 'title': 'Leaderboard'},
      {'iconPath': 'assets/icons/rocket.png', 'title': 'Referral'},
    ];

    final List<Map<String, dynamic>> teamData = [
      {
        'name': 'Alice',
        'iconPath': 'assets/icons/1.png',
        'color': Color(0xFF6F6FFB),
      },
      {
        'name': 'Bob',
        'iconPath': 'assets/icons/2.png',
        'color': Color(0xFF68DBF2),
      },
      {
        'name': 'Charlie',
        'iconPath': 'assets/icons/3.png',
        'color': Color(0xFFF16063),
      },
      {
        'name': 'David',
        'iconPath': 'assets/icons/1.png',
        'color': Color(0xFF6F6FFB),
      },
      {
        'name': 'Emma',
        'iconPath': 'assets/icons/2.png',
        'color': Color(0xFF68DBF2),
      },
      {
        'name': 'Frank',
        'iconPath': 'assets/icons/3.png',
        'color': Color(0xFFF16063),
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black54,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 412,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    // ignore: deprecated_member_use
                    Color(0xFF8246FB).withValues(alpha: 0.6),
                    // ignore: deprecated_member_use
                    Color(0xFF8246FB).withValues(alpha: 0.0),
                  ],
                  stops: const [0.0, 1.0],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 60,
                bottom: 100,
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/user.png',
                        height: 40.0,
                        width: 40.0,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Good Evening, Vikas',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              height: 1.2,
                            ),
                          ),
                          Text(
                            'Keep mining, keep earning',
                            style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              height: 1.2,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/icons/headphone.png',
                        height: 40,
                        width: 40,
                      ),
                      const SizedBox(width: 8),
                      Image.asset(
                        'assets/icons/settings.png',
                        height: 40,
                        width: 40,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const RewardsContainer(),
                  const SizedBox(height: 24),
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 9,
                          mainAxisSpacing: 9,
                          childAspectRatio: 1,
                        ),
                    itemCount: gridData.length,
                    itemBuilder: (context, index) {
                      return GridContainer(
                        iconPath: gridData[index]['iconPath']!,
                        title: gridData[index]['title']!,
                      );
                    },
                  ),
                  const SizedBox(height: 24),
                  const AddContainer(),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Team',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          height: 1.2,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          height: 1.2,
                          color: Color(0xFF8246FB),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemCount: teamData.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 16, top: 12),
                          child: TeamContainer(
                            color: teamData[index]['color'],
                            iconPath: teamData[index]['iconPath'],
                            name: teamData[index]['name'],
                          ),
                        );
                      },
                    ),
                  ),
                  Text(
                    'Tasks',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      height: 1.2,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 12),
                  TaskContainer(),
                  Image.asset(
                    'assets/images/Label.png',
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ignore: deprecated_member_use
                      Indicator(fillColor: Color(0xFFFFFFFF).withOpacity(0.6)),
                      SizedBox(width: 8),
                      Indicator(fillColor: Color(0xFF8246FB)),
                      SizedBox(width: 8),
                      // ignore: deprecated_member_use
                      Indicator(fillColor: Color(0xFFFFFFFF).withOpacity(0.6)),
                      SizedBox(width: 8),
                      // ignore: deprecated_member_use
                      Indicator(fillColor: Color(0xFFFFFFFF).withOpacity(0.6)),
                      SizedBox(width: 8),
                      // ignore: deprecated_member_use
                      Indicator(fillColor: Color(0xFFFFFFFF).withOpacity(0.6)),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Socials',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      height: 1.2,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 12),
                  SocialContainer(
                    title: 'Follow us on X',
                    subTitle: 'Set it and share it with your friends.',
                  ),
                  SizedBox(height: 8),
                  SocialContainer(
                    title: 'Join Telegram',
                    subTitle: 'Be part of our community and join now.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
