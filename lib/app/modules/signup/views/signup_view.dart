import 'package:assignment/app/common/constants/colors.dart';
import 'package:assignment/app/common/constants/text_style.dart';
import 'package:assignment/app/common/widgets/custom_button.dart';
import 'package:assignment/app/modules/signup/views/signup_page_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
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
      body: SizedBox(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
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
                        height: 30,
                      ),
                      CustomTextFormField(
                        hintText: 'Name',
                        suffixIcon: 'assets/icon-user.svg',
                      ),
                      CustomTextFormField(
                        hintText: 'Surname',
                        suffixIcon: 'assets/icon-user.svg',
                      ),
                      CustomTextFormField(
                        controller: controller.email,
                        isController: true,
                        hintText: 'Email',
                        suffixIcon: 'assets/icon-email.svg',
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextFormField(
                              hintText: 'Gender',
                              suffixIcon: 'assets/icon-gender.svg',
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: CustomTextFormField(
                              hintText: 'Birthday',
                              suffixIcon: 'assets/icon-cake.svg',
                            ),
                          ),
                        ],
                      ),
                      CustomTextFormField(
                        hintText: 'city',
                        suffixIcon: 'assets/icon-location.svg',
                      ),
                    ],
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
                  Get.to(SignupPageOne());
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
      ),
    );
  }
}
