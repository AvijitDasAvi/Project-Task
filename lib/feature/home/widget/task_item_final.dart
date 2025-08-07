import 'package:flutter/material.dart';
import 'dart:ui';

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
        Expanded(child: _buildTaskContainer()),
      ],
    );
  }

  Widget _buildTaskContainer() {
    if (isCurrent) {
      // Glassmorphism effect for current/active item
      return ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Color(0xFFFFFFFF).withValues(alpha: 0.12),
                  Color(0xFFFFFFFF).withValues(alpha: 0.05),
                ],
                center: Alignment.center,
                radius: 1.2,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: _buildTaskContent(),
          ),
        ),
      );
    } else {
      // Regular container for non-current items
      return Container(
        padding: const EdgeInsets.all(16),
        child: _buildTaskContent(),
      );
    }
  }

  Widget _buildTaskContent() {
    return Row(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: !isLocked && icon.contains('photo_icon.png')
                    ? const LinearGradient(
                        colors: [Color(0xFFA746FB), Color(0xFF2A71E3)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      )
                    : null,
                color: !isLocked && icon.contains('photo_icon.png')
                    ? null
                    : _getIconBackgroundColor(icon, isLocked),
              ),
              child: Center(
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: Image.asset(
                    icon,
                    color: (!isLocked && icon.contains('photo_icon.png'))
                        ? Colors.white
                        : _getIconColor(icon),
                  ),
                ),
              ),
            ),
            if (isLocked)
              Positioned(
                bottom: -2,
                right: -2,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: const Color(0xFF3A3A3A),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFF0F0F0F),
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/icons/locked_icon.png',
                      width: 14,
                      height: 14,
                      errorBuilder: (context, error, stackTrace) {
                        debugPrint('Error loading locked_icon.png: $error');
                        return const Icon(
                          Icons.lock,
                          color: Colors.white,
                          size: 10,
                        );
                      },
                    ),
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
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Text(
          coins ?? '+10',
          style: const TextStyle(
            color: Color(0xFFE0CD67),
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Color _getIconBackgroundColor(String iconPath, bool isLocked) {
    return const Color(0x14FFFFFF); // #FFFFFF14
  }

  Color _getIconColor(String iconPath) {
    return Colors.white;
  }
}
