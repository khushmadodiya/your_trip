import 'package:flutter/material.dart';

import '../Globle/globle.dart';

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
      items:  [
        BottomNavigationBarItem(
          icon: Icon(Icons.home), // Customize icon color
          label: langs ? 'Home' : 'होम',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat), // Customize icon color
          label: langs ? 'ChatBot':'चैटबॉट',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,

          ), // Customize icon color
          label: langs ? 'storys': 'स्टोरीज',
        ),
        // Add more BottomNavigationBarItems as needed
      ],

    );
  }
}
