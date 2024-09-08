import 'package:epil_app/src/constants/theme_variables.dart';
import 'package:flutter/material.dart';

class AppInputTheme {
  OutlineInputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: BorderSide(color: color, width: 1),
    );
  }

  InputDecorationTheme theme() => InputDecorationTheme(
        contentPadding: const EdgeInsets.all(16.0),
        isDense: true,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: _buildBorder(AppColors.cBlue100),
        errorBorder: _buildBorder(Colors.red),
        focusedBorder: _buildBorder(AppColors.cBlue500),
        border: _buildBorder(AppColors.cBlue100),
        labelStyle:
            AppFontsStyle.cSemibold16.copyWith(color: AppColors.cBlue700),
      );
}

class AppElevaitedButtonTheme {
  ElevatedButtonThemeData theme() => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: AppFontsStyle.cSemibold16,
          elevation: 2,
          minimumSize: const Size(300, 56),
          side: const BorderSide(color: AppColors.cWhiteBorder),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          backgroundColor: AppColors.cBlue500,
          foregroundColor: AppColors.cWhite,
          shadowColor: AppColors.cBlueShadow,
        ),
      );
}

class AppNavigationBarTheme {
  NavigationBarThemeData theme() => NavigationBarThemeData(
        backgroundColor: AppColors.cWhite,
        labelTextStyle: WidgetStatePropertyAll<TextStyle>(
          AppFontsStyle.cRegular12.copyWith(color: AppColors.cBlue900),
        ),
      );
}

class AppFloatingActionButtonTheme {
  FloatingActionButtonThemeData theme() => const FloatingActionButtonThemeData(
        backgroundColor: AppColors.cBlue500,
        foregroundColor: AppColors.cWhite,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: AppColors.cWhiteBorder),
          borderRadius: BorderRadius.all(
            Radius.circular(14.0),
          ),
        ),
      );
}

class AppAppBarTheme {
  AppBarTheme theme() => const AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.cWhite,
      );
}
