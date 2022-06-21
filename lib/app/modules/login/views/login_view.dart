import 'package:assignment/app/common/constants/colors.dart';
import 'package:assignment/app/common/constants/text_style.dart';
import 'package:assignment/app/common/widgets/custom_button.dart';
import 'package:assignment/app/common/widgets/custom_textField.dart';
import 'package:assignment/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Spacer(
              flex: 1,
            ),
            Text(
              'Login',
              style: MyTextStyle.headingStyle,
            ),
            Spacer(
              flex: 1,
            ),
            CustomTextField(
              hintText: 'Email',
            ),
            CustomTextField(
              hintText: 'Password',
            ),
            Text(
              'Forgot your password ?',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            CustomButton(
                label: 'Login',
                onTap: () {
                  Get.toNamed(Routes.ONBOARDING);
                }),
            Text(
              'Or, Login with',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Container(
                  margin: EdgeInsets.only(left: 14),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff46414b),
                        Color(0xff272527),
                      ],
                    ),
                  ),
                  child: SvgPicture.asset(
                    logoType(index),
                    fit: BoxFit.scaleDown,
                  ),
                );
              }),
            ),
            Spacer(
              flex: 1,
            ),
            Text(
              'Don\'t have an account? Register',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColors.secondaryFontColor),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    ));
  }

  String logoType(int index) {
    if (index == 0) {
      return 'assets/apple-logo.svg';
    } else if (index == 1) {
      return 'assets/facebook-logo.svg';
    } else {
      return 'assets/google-logo.svg';
    }
  }
}
