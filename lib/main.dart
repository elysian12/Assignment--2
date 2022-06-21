import 'package:assignment/app/common/constants/colors.dart';
import 'package:assignment/app/common/constants/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      theme: ThemeData.dark().copyWith(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.primaryColor,
      ),
      initialRoute: Routes.LOGIN,
      getPages: AppPages.routes,
    ),
  );
}
