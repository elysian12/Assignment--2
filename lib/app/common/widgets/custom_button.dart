// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:assignment/app/common/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const CustomButton({Key? key, required this.label, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 30, bottom: 40),
        height: 50,
        width: 326,
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
        child: Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String suffixIcon;
  final bool showSuffixIcon;
  final bool showPrefixIcon;
  final bool isController;
  final TextEditingController? controller;
  const CustomTextFormField(
      {Key? key,
      required this.hintText,
      required this.suffixIcon,
      this.showSuffixIcon = false,
      this.showPrefixIcon = true,
      this.isController = false,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: TextFormField(
        controller: isController ? controller : null,
        style: TextStyle(color: AppColors.primaryColor),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
              left: 20,
              top: 15,
              bottom: 15,
            ),
            labelStyle: TextStyle(color: AppColors.primaryColor),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: AppColors.primaryColor.withOpacity(0.5),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  BorderSide(color: AppColors.primaryColor.withOpacity(0.5)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  BorderSide(color: AppColors.primaryColor.withOpacity(0.5)),
            ),
            prefixIconConstraints: BoxConstraints(
              maxWidth: 100,
              maxHeight: 80,
            ),
            prefixIcon: showPrefixIcon
                ? Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    child: SvgPicture.asset(
                      suffixIcon,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                  )
                : null,
            suffixIcon: showSuffixIcon
                ? Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    child: SvgPicture.asset(
                      suffixIcon,
                      height: 10,
                      fit: BoxFit.cover,
                    ),
                  )
                : null,
            hintText: hintText,
            hintStyle: TextStyle(
              color: AppColors.primaryColor.withOpacity(0.5),
            )),
      ),
    );
  }
}
