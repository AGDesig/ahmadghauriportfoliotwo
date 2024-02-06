import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_colors.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_styles.dart';
import 'package:flutter/material.dart';


abstract class CustomTheme {
  static ThemeData lightTheme() => ThemeData.light();
  static ThemeData darkTheme() => ThemeData(
        primaryColor: AppColors.primaryColor,
        highlightColor: AppColors.secondaryColor,
        scaffoldBackgroundColor: AppColors.scaffoldColor,
        fontFamily: 'Poppins',
        inputDecorationTheme: InputDecorationTheme(
          fillColor: AppColors.primaryLight,
          filled: true,
          labelStyle: AppStyles.s14,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lowPriority),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColor),
          ),
        ),
      );
}
