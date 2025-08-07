import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_task/feature/home/controller/home_controller.dart';
import 'task_item.dart';

class TaskContainer extends StatelessWidget {
  const TaskContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: CircularProgressIndicator(
                          value:
                              controller.completedTasks /
                              controller.tasks.length,
                          strokeWidth: 6,
                          backgroundColor: const Color(0xFF3A3A3A),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        '${controller.completedTasks} of ${controller.tasks.length}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Earn more coins',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Complete the tasks below and earn 84 coins',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Stack(
            children: [
              Positioned(
                left: 11,
                top: 1,
                bottom: 35,
                child: Container(
                  width: 2,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.45, 0.45, 1.0],
                      colors: [
                        Color(0xFF22C55E),
                        Color(0xFF22C55E),
                        Color(0xFF3A3A3A),
                        Color(0xFF3A3A3A),
                      ],
                    ),
                  ),
                ),
              ),
              Obx(
                () => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    controller.tasks.length,
                    (index) {
                      final task = controller.tasks[index];
                      return TaskItem(
                        icon: task['icon'],
                        title: task['title'],
                        description: task['description'],
                        isCompleted: task['isCompleted'],
                        isLocked: task['isLocked'],
                        isCurrent: task['isCurrent'] ?? false,
                        isFirst: index == 0,
                        isLast: index == controller.tasks.length - 1,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}