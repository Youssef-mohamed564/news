
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_styles.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(

      scaffoldBackgroundColor: AppColor.whiteBgColor,
      cardColor: AppColor.whiteBgColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: AppColor.whiteColor,
          unselectedItemColor: AppColor.whiteColor),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppColor.primaryLight,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
              side: const BorderSide(color: AppColor.whiteColor, width: 5))),
      primaryColor: AppColor.primaryLight,
      useMaterial3: true,
      textTheme: TextTheme(
          headlineLarge: AppStylse.bold20Black,
          headlineMedium: AppStylse.bold20Black));
  static final ThemeData darkTheme = ThemeData(
      cardColor: AppColor.PrimaryDark,
      primaryColor: AppColor.PrimaryDark,
      scaffoldBackgroundColor: AppColor.PrimaryDark,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: AppColor.whiteColor,
          unselectedItemColor: AppColor.whiteColor),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppColor.primaryLight,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
              side: const BorderSide(color: AppColor.whiteColor, width: 5))),
      useMaterial3: true,
      textTheme: TextTheme(
          headlineMedium: AppStylse.bold20Black,
          headlineLarge: AppStylse.bold20White));
}
