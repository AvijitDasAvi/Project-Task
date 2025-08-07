import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxList<Map<String, dynamic>> tasks = [
    {
      'icon': 'assets/icons/welcome_bonus_icon.png',
      'title': 'Welcome Bonus',
      'description': 'In your wallet now.',
      'isCompleted': true,
      'isLocked': false,
    },
    {
      'icon': 'assets/icons/photo_icon.png',
      'title': 'Add Profile Photo',
      'description': 'Complete your profile now.',
      'isCompleted': false,
      'isLocked': false,
      'isCurrent': true,
    },
    {
      'icon': 'assets/icons/twitter_icon.png',
      'title': 'Follow Us on X',
      'description': 'Stay connected and get updates.',
      'isCompleted': false,
      'isLocked': true,
    },
    {
      'icon': 'assets/icons/telegram_icon.png',
      'title': 'Join Our Telegram',
      'description': 'Be part of live AMA discussions.',
      'isCompleted': false,
      'isLocked': true,
    },
    {
      'icon': 'assets/icons/friends_icon.png',
      'title': 'Invite 3 Friends',
      'description': 'Grow your team, earn passively.',
      'isCompleted': false,
      'isLocked': true,
    },
  ].obs;

  int get completedTasks =>
      tasks.where((task) => task['isCompleted'] == true).length;
}
