import 'package:assignment/app/common/constants/colors.dart';
import 'package:assignment/app/common/constants/text_style.dart';
import 'package:assignment/app/modules/signup/controllers/signup_controller.dart';
import 'package:assignment/app/modules/signup/views/signup_page_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SignupPageOne extends GetView<SignupController> {
  const SignupPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.fontColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.fontColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.primaryColor.withOpacity(0.4),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/close.svg'),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: SizedBox(
                  width: Get.width,
                  child: Column(
                    children: [
                      Text(
                        'Create Account',
                        style: MyTextStyle.headingStyle.copyWith(
                          color: Color.fromRGBO(88, 16, 180, 1),
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'i\'m searching for :',
                        style: MyTextStyle.headingStyle.copyWith(
                          color: AppColors.primaryColor,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'You must choose atleast one',
                        style: MyTextStyle.headingStyle.copyWith(
                          color: AppColors.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: List.generate(
                          3,
                          (index) => InkWell(
                            onTap: () {
                              controller.selectChoice(index);
                            },
                            child: GetBuilder<SignupController>(builder: (_) {
                              return Container(
                                margin: EdgeInsets.only(top: 20),
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: controller.currentIndex != index
                                        ? AppColors.primaryColor
                                            .withOpacity(0.5)
                                        : AppColors.purple,
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      index == 0
                                          ? "assets/icon-dog.svg"
                                          : index == 1
                                              ? "assets/icon-heart.svg"
                                              : "assets/icon-friends.svg",
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      index == 0
                                          ? "Dog walks"
                                          : index == 1
                                              ? "Partner"
                                              : "Friends",
                                      style: TextStyle(
                                        color: AppColors.primaryColor
                                            .withOpacity(0.5),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Container(
                alignment: Alignment.bottomCenter,
                height: 100,
                width: Get.width,
                decoration: BoxDecoration(
                  color: AppColors.purple.withOpacity(0.4),
                ),
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Don\'t have an account? Sign in Insted',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 50,
            bottom: 70,
            child: InkWell(
              onTap: () {
                Get.to(SignupPageTwo());
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Next',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                height: 50,
                width: Get.width * 0.8,
                decoration: BoxDecoration(
                  color: AppColors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
