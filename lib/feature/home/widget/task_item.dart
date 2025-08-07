import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String icon;
  final String title;
  final String description;
  final bool isCompleted;
  final bool isLocked;
  final String? coins;
  final bool isCurrent;
  final bool isFirst;
  final bool isLast;

  const TaskItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.isCompleted,
    required this.isLocked,
    this.coins,
    this.isCurrent = false,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    final Color greenColor = const Color(0xFF22C55E);
    final Color greyColor = const Color(0xFF3A3A3A);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Center(
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: isCompleted
                  ? greenColor
                  : isCurrent
                  ? Colors.black
                  : Colors.black,
              shape: BoxShape.circle,
              border: isCurrent
                  ? Border.all(color: greenColor, width: 2)
                  : Border.all(color: Colors.white24, width: 2),
            ),
            child: isCompleted
                ? const Icon(Icons.check, color: Colors.white, size: 16)
                : isCurrent
                ? Center(
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: greenColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                : Center(
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        color: Colors.white24,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
          ),
        ),
        const SizedBox(width: 7),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isCurrent ? const Color(0xFF1A1A1A) : Colors.transparent,
              borderRadius: BorderRadius.circular(12),
              border: isCurrent
                  ? Border.all(color: const Color(0xFF3A3A3A))
                  : null,
            ),
            child: Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SizedBox(
                      width: 38,
                      height: 38,
                      child: Image.asset('assets/icons/list_item_icon.png'),
                    ),
                    if (isLocked)
                      Positioned(
                        bottom: -4,
                        right: -4,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: greyColor,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: isCurrent
                                  ? const Color(0xFF1A1A1A)
                                  : const Color(0xFF0F0F0F),
                              width: 2,
                            ),
                          ),
                          child: const Icon(
                            Icons.lock,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: isLocked ? Colors.grey.shade500 : Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        description,
                        style: TextStyle(
                          color: isLocked
                              ? Colors.grey.shade600
                              : Colors.grey.shade400,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
