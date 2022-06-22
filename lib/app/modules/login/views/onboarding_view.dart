import 'package:assignment/app/common/constants/colors.dart';
import 'package:assignment/app/common/constants/text_style.dart';
import 'package:assignment/app/modules/login/controllers/login_controller.dart';
import 'package:assignment/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OnBoardingView extends GetView<LoginController> {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GetBuilder<LoginController>(builder: (context) {
                    return controller.currentPageIndex != 0
                        ? InkWell(
                            onTap: () {
                              controller.changePage();
                            },
                            child: Icon(Icons.arrow_back))
                        : SizedBox.shrink();
                  }),
                  InkWell(
                    onTap: () => Get.offAllNamed(Routes.HOME),
                    child: Text(
                      'Skip',
                      style: TextStyle(color: AppColors.secondaryFontColor),
                    ),
                  )
                ],
              ),
              Spacer(
                flex: 2,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: PageView.builder(
                    controller: controller.pageController,
                    itemCount: controller.pages.length,
                    onPageChanged: (page) {
                      controller.pageUpdate(page);
                    },
                    itemBuilder: (context, index) {
                      var item = controller.pages[index];
                      return Column(
                        children: [
                          SvgPicture.asset(item.imageUrl),
                          Spacer(
                            flex: 1,
                          ),
                          Text(
                            item.heading,
                            style: MyTextStyle.headingStyle.copyWith(
                              color: AppColors.secondaryFontColor,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            item.body,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      );
                    }),
              ),
              GetBuilder<LoginController>(builder: (context) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(controller.pages.length, (index) {
                    return Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == controller.currentPageIndex
                            ? Colors.blue
                            : Colors.grey,
                      ),
                    );
                  }),
                );
              }),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
