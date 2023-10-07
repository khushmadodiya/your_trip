import 'package:flutter/material.dart';

class CustomGradientBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomGradientBottomNavigationBar({super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home), // Customize icon color
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag), // Customize icon color
          label: 'MYTrip',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.monetization_on_outlined,

          ), // Customize icon color
          label: 'TripMoney',
        ),
        // Add more BottomNavigationBarItems as needed
      ],

    );
  }
}
