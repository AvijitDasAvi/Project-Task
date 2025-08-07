import 'package:flutter/material.dart';
import 'dart:ui';

class CustomBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final List<NavigationItem> items = [
      NavigationItem(
        icon: 'assets/icons/nav_home.png',
        label: 'Home',
        isActive: currentIndex == 0,
      ),
      NavigationItem(
        icon: 'assets/icons/nav_community.png',
        label: 'Community',
        isActive: currentIndex == 1,
      ),
      NavigationItem(
        icon: 'assets/icons/nav_wallet.png',
        label: 'Wallet',
        isActive: currentIndex == 2,
      ),
      NavigationItem(
        icon: 'assets/icons/nav_nearby.png',
        label: 'Nearby',
        isActive: currentIndex == 3,
      ),
    ];

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 20),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.grey.shade900.withValues(alpha: 0.9),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.1),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.6),
              blurRadius: 20,
              spreadRadius: 2,
              offset: const Offset(0, 8),
            ),
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.3),
              blurRadius: 40,
              spreadRadius: 0,
              offset: const Offset(0, 16),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(items.length, (index) {
                    return GestureDetector(
                      onTap: () => onTap(index),
                      child: _buildNavItem(items[index], index),
                    );
                  }),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(NavigationItem item, int index) {
    return Align(
      alignment: index == 0
          ? Alignment.centerLeft
          : index == 3
          ? Alignment.centerRight
          : Alignment.center,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          gradient: item.isActive
              ? const LinearGradient(
                  colors: [Color(0xFFA746FB), Color(0xFF2A71E3)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )
              : null,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              item.icon,
              height: 30,
              width: 30,
              color: item.isActive ? Colors.white : Colors.white60,
            ),
            if (item.isActive) ...[
              const SizedBox(width: 6),
              Text(
                item.label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class NavigationItem {
  final String icon;
  final String label;
  final bool isActive;

  NavigationItem({
    required this.icon,
    required this.label,
    required this.isActive,
  });
}
