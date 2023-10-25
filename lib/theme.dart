import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mytheme {

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade800,
    colorScheme: ColorScheme.dark(),
    primarySwatch: Colors.blue,
  );
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
    primarySwatch: Colors.amber,
  );
}
