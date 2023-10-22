import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ResisterAndSignin.dart';

class ProfilContainer extends StatelessWidget {
  final double width;
  final double height;
  final Widget? child;
  final Color? colors;

  const ProfilContainer({super.key,
    required this.width,
    required this.height,
    this.child,
    this.colors,
  });

  @override
  Widget build(BuildContext context) {
    bool darkTheme = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: colors ??  Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}