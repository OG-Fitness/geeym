import 'package:flutter/material.dart';

class AppTypography {
  static const _baseFamily = 'SF Pro'; // replace with Inter/Poppins if needed

  static TextTheme textTheme = const TextTheme(
    displayLarge: TextStyle(fontFamily: _baseFamily, fontSize: 32, fontWeight: FontWeight.w700, height: 1.2),
    headlineMedium: TextStyle(fontFamily: _baseFamily, fontSize: 24, fontWeight: FontWeight.w700),
    titleMedium: TextStyle(fontFamily: _baseFamily, fontSize: 16, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(fontFamily: _baseFamily, fontSize: 16, fontWeight: FontWeight.w500),
    bodyMedium: TextStyle(fontFamily: _baseFamily, fontSize: 14, fontWeight: FontWeight.w400),
    labelLarge: TextStyle(fontFamily: _baseFamily, fontSize: 14, fontWeight: FontWeight.w600),
  );
}