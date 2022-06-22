import 'dart:developer';

import 'package:assignment/app/common/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        elevation: 0,
        centerTitle: true,
      ),
      body: SizedBox(
        height: Get.height * 0.8,
        width: Get.width,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            SvgPicture.asset('assets/profile-pic.svg'),
            Spacer(
              flex: 1,
            ),
            GestureDetector(
              onPanStart: (details) {
                controller.onPanStart(details);
              },
              onPanEnd: (details) {
                controller.onPanEnd(details);
              },
              onPanUpdate: (details) {
                controller.onPanUpdate(details);
              },
              child: GetBuilder<HomeController>(builder: (context) {
                final milliseconds = 0;
                return AnimatedContainer(
                  duration: Duration(milliseconds: milliseconds),
                  curve: Curves.easeInOut,
                  transform: Matrix4.identity()
                    ..translate(controller.postion.dx, controller.postion.dy),
                  child: customCard(),
                );
              }),
            ),
            Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return InkWell(
                  onTap: () {
                    controller.showDialogOnButton(index);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: SvgPicture.asset(returnArrow(index)),
                  ),
                );
              }),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }

  String returnArrow(int index) {
    if (index == 0) {
      return 'assets/arrow-left.svg';
    } else if (index == 1) {
      return 'assets/arrow-up.svg';
    } else if (index == 2) {
      return 'assets/arrow-right.svg';
    }
    return 'assets/arrow-down.svg';
  }

  Widget customCard() {
    return Container(
      height: Get.height * 0.4,
      width: Get.width * 0.7,
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                  color: AppColors.pink,
                ),
                child: SvgPicture.asset('assets/butterfly2.svg'),
              )),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18),
                ),
                color: Colors.black,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    'Uttarly, 0.5 Km.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Barodian Bee',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
