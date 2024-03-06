import 'package:flutter/material.dart';

class AppColors {
  static const int primaryValue = 0xFF009EB3; // Color value for primary color
  static const MaterialColor primarySwatch = MaterialColor(
    primaryValue,
    <int, Color>{
      50: Color(0xFFE0F7FA),
      100: Color(0xFFB2EBF2),
      200: Color(0xFF80DEEA),
      300: Color(0xFF4DD0E1),
      400: Color(0xFF26C6DA),
      500: Color(primaryValue), // Same as primary color
      600: Color(0xFF00ACC1),
      700: Color(0xFF0097A7),
      800: Color(0xFF00838F),
      900: Color(0xFF006064),
    },
  );
}