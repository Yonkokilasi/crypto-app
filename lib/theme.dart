import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColorDark = const Color(0xFF141d2c);
  static Color lightBlue = const Color(0xFFe6effe);
  static Color purple = const Color(0xFFe2dcfe);
  static Color pink = const Color(0xFFfedfff);
}

final ThemeData appTheme = ThemeData(
  primaryColor: Colors.white,
  primaryColorDark: const Color(0xFF141d2c),
  cardColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.deepPurple,
  ),
  useMaterial3: true,
);
