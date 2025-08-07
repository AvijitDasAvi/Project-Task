import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxList<Map<String, dynamic>> tasks = [
    {
      'icon': 'assets/icons/list_item_icon.png',
      'title': 'Claim your nickname',
      'description': 'Set it and share it with your friends.',
      'isCompleted': true,
      'isLocked': false,
    },
    {
      'icon': 'assets/icons/list_item_icon.png',
      'title': 'Start earning',
      'description': 'Your first check-in session.',
      'isCompleted': true,
      'isLocked': false,
    },
    {
      'icon': 'assets/icons/list_item_icon.png',
      'title': 'Profile picture',
      'description': 'Upload your profile image.',
      'isCompleted': false,
      'isLocked': false,
      'isCurrent': true,
    },
    {
      'icon': 'assets/icons/list_item_icon.png',
      'title': 'Follow us on X',
      'description': 'Let\'s keep in touch, follow us on X',
      'isCompleted': false,
      'isLocked': true,
    },
    {
      'icon': 'assets/icons/list_item_icon.png',
      'title': 'Join Telegram',
      'description': 'Be part of our community and join now.',
      'isCompleted': false,
      'isLocked': true,
    },
    {
      'icon': 'assets/icons/list_item_icon.png',
      'title': 'Invite 5 Friends',
      'description': 'Grow your team and increase your earnings.',
      'isCompleted': false,
      'isLocked': true,
    },
  ].obs;

  int get completedTasks => tasks.where((task) => task['isCompleted'] == true).length;
}