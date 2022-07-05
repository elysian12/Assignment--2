import 'package:assignment/app/common/constants/colors.dart';
import 'package:assignment/app/common/constants/text_style.dart';
import 'package:assignment/app/modules/signup/controllers/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FinalPage extends GetView<SignupController> {
  const FinalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.fontColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.fontColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/close.svg'),
          )
        ],
      ),
      body: SizedBox(
        width: Get.width,
        child: Column(
          children: [
            SvgPicture.asset('assets/email-image.svg'),
            Text(
              'Almost there!',
              style: MyTextStyle.headingStyle.copyWith(
                color: Color.fromRGBO(88, 16, 180, 1),
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Registration details has been sent to ${controller.email.text}',
              style: MyTextStyle.headingStyle.copyWith(
                color: AppColors.primaryColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
