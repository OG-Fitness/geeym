
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'app_colors.dart';
import 'app_dimensions.dart';
import 'app_typography.dart';

class AppThemePair {
  final ThemeData light;
  final ThemeData dark;
  const AppThemePair(this.light, this.dark);
}

final appThemeProvider = Provider<AppThemePair>((ref) {
  final baseLight = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.orange),
    useMaterial3: true,
    textTheme: AppTypography.textTheme,
    scaffoldBackgroundColor: AppColors.grey50,
    appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
    cardTheme: const CardThemeData(
      elevation: AppDimens.elevation,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(AppDimens.radiusXl))),
    )
  );

  final baseDark = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.orangeDark, brightness: Brightness.dark),
    useMaterial3: true,
    textTheme: AppTypography.textTheme,
    scaffoldBackgroundColor: const Color(0xFF0B0F1A),
  );

  return AppThemePair(baseLight, baseDark);
});