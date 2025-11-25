import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key});

  // ValueNotifier to track selected bottom tab
  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndex,
      builder: (context, value, _) {
        return Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _navItem(
                index: 0,
                currentIndex: value,
                icon: Icons.home_outlined,
                onTap: () => selectedIndex.value = 0,
              ),
              _navItem(
                index: 1,
                currentIndex: value,
                icon: Icons.favorite_outline,
                onTap: () {
                  selectedIndex.value = 1;

                }
              ),
              _navItem(
                index: 2,
                currentIndex: value,
                icon: Icons.person_outline,
                onTap: () => selectedIndex.value = 2,
              ),
              _navItem(
                index: 3,
                currentIndex: value,
                icon: Icons.shopping_cart_outlined,
                onTap: () => selectedIndex.value = 3,
              ),
            ],
          ),
        );
      },
    );
  }

  /// Navigation item builder
  Widget _navItem({
    required int index,
    required int currentIndex,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    final bool isSelected = index == currentIndex;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Icon(
          icon,
          size: 30,
          color: isSelected ? Colors.black : Colors.white54,
        ),
      ),
    );
  }
}
