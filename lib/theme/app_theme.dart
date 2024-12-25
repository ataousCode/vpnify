import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      background: Color(0xFF1A1B35),
      primary: Colors.cyan,
      secondary: Colors.purple,
    ),
    scaffoldBackgroundColor: const Color(0xFF1A1B35),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white70),
      bodyMedium: TextStyle(color: Colors.white70),
    ),
  );

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      background: Color(0xFFF5F6FA),
      primary: Color(0xFF00BCD4),
      secondary: Color(0xFF9C27B0),
      surface: Colors.white,
    ),
    scaffoldBackgroundColor: Color(0xFFF5F6FA),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Color(0xFF2D3142),
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        color: Color(0xFF2D3142),
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        color: Color(0xFF4A4E69),
        fontSize: 14,
      ),
    ),
    cardColor: Colors.white,
    dividerColor: Color(0xFFE5E6EC),
  );
}