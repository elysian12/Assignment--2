import 'package:assignment/app/common/constants/colors.dart';
import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.primaryColor,
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.primaryColor,
      actionsIconTheme: IconThemeData(
        color: AppColors.fontColor,
      ),
    ),
  );
}

TextTheme textTheme() {
  return TextTheme(
      // headline2: MyTextStyle.heading,
      // headline4: MyTextStyle.label,
      // headline6: MyTextStyle.buttonStyle,
      // bodyText1: MyTextStyle.small,
      );
}
