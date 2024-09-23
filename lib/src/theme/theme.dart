import 'package:clean_snap/src/common/const/global_variable.dart' as global;
import 'package:clean_snap/src/theme/color_scheme.dart';
import 'package:clean_snap/src/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  factory AppTheme() {
    return instance;
  }

  static final AppTheme instance = AppTheme._();

  ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: colorSchemeLight,
      appBarTheme: AppBarTheme(
        color: colorSchemeLight.onPrimary
      ),
      textTheme: textTheme,


    );
  }
}
