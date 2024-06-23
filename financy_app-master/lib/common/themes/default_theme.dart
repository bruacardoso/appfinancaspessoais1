import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class CustomTheme {
  CustomTheme._();

  factory CustomTheme() {
    return CustomTheme._();
  }

  ThemeData get defaultTheme {
    const defaultBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.purpleOne,
      ),
    );

    return ThemeData(
      useMaterial3: false,
      colorScheme: const ColorScheme.light(
        primary: AppColors.purpleTwo,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: AppColors.iceWhite,
        backgroundColor: AppColors.purpleThree,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.purpleTwo,
        ),
      ),
      tooltipTheme:
          const TooltipThemeData(textStyle: TextStyle(color: Colors.white)),
      tabBarTheme: const TabBarTheme(
        indicator: BoxDecoration(
          border: Border(),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle:
            AppTextStyles.inputLabelText.copyWith(color: AppColors.grey),
        hintStyle: AppTextStyles.inputHintText.copyWith(color: AppColors.purpleTwo),
        focusedBorder: defaultBorder,
        enabledBorder: defaultBorder,
        disabledBorder: defaultBorder,
        errorBorder: defaultBorder.copyWith(
          borderSide: const BorderSide(
            color: AppColors.error,
          ),
        ),
        focusedErrorBorder: defaultBorder.copyWith(
          borderSide: const BorderSide(
            color: AppColors.error,
          ),
        ),
      ),
    );
  }
}

