import 'package:assignment/app/common/constants/colors.dart';
import 'package:assignment/app/common/constants/text_style.dart';
import 'package:assignment/app/common/widgets/custom_button.dart';
import 'package:assignment/app/modules/signup/controllers/signup_controller.dart';
import 'package:assignment/app/modules/signup/views/final_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:get/get_state_manager/get_state_manager.dart';

class SignupPageTwo extends GetView<SignupController> {
  const SignupPageTwo({Key? key}) : super(key: key);

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
      body: Padding(
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
              SizedBox(
                height: 10,
              ),
              Text(
                'Password must be at least 8 characters, contain letters, numbers and one special character.',
                style: MyTextStyle.headingStyle.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              CustomTextFormField(
                showPrefixIcon: false,
                hintText: 'Password',
                suffixIcon: 'assets/icon-eye-shlash.svg',
                showSuffixIcon: true,
              ),
              CustomTextFormField(
                showPrefixIcon: false,
                hintText: 'Confirm Password',
                suffixIcon: 'assets/icon-eye-shlash.svg',
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Get.to(FinalPage());
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Done',
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
              SizedBox(
                height: 20,
              ),
              Text(
                'By Signing up to App you accept our Terms of Service and Privacy Policy.',
                style: MyTextStyle.headingStyle.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
