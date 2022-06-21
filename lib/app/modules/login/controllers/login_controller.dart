import 'package:assignment/app/data/models/pages_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late PageController pageController;
  //intial
  int currentPageIndex = 0;

  List<PageModel> pages = [
    PageModel(
      heading: 'Feature 01',
      body:
          'Feature 02 Feature 03 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      imageUrl: 'assets/butterfly1.svg',
    ),
    PageModel(
      heading: 'Feature 02',
      body:
          'Feature 02 Feature 03 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      imageUrl: 'assets/butterfly2.svg',
    ),
    PageModel(
      heading: 'Feature 03',
      body:
          'Feature 02 Feature 03 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      imageUrl: 'assets/butterfly3.svg',
    ),
  ];

  //functions

  void pageUpdate(int value) {
    currentPageIndex = value;
    update();
  }

  void changePage() {
    if (currentPageIndex == 1) {
      pageController.animateToPage(0,
          duration: Duration(milliseconds: 400), curve: Curves.ease);
    }
    if (currentPageIndex == 2) {
      pageController.animateToPage(1,
          duration: Duration(milliseconds: 400), curve: Curves.ease);
    }
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
