import 'package:assignment/app/common/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText,
          style: TextStyle(color: AppColors.secondaryFontColor),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
