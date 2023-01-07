import 'package:flutter/material.dart';

abstract class AppConstants {
  static const cachedData = "Cached Data";
  static const isSkipped = "is Skipped";

  //* theme Data
  static ThemeData? customTheme = ThemeData(
    scaffoldBackgroundColor: Colors.brown.shade50,
    appBarTheme: AppBarTheme(
      elevation: 14.0,
      backgroundColor: Colors.brown.shade100,
    ),
    primaryColor: Colors.brown,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.brown.shade100,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
    ),
  );
}
