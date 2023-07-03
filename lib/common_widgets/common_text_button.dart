import 'package:flutter/material.dart';
import 'package:india1_web_ui/responsive.dart';

import '../constants/app_colors.dart';

class CommonTextButton extends StatelessWidget {
  const CommonTextButton(
      {super.key,
      this.ontap,
      this.color,
      required this.buttonName,
      this.buttonHeight,
      this.buttonWidth});

  final void Function()? ontap;
  final Color? color;
  final String buttonName;
  final double? buttonHeight;
  final double? buttonWidth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onHover: ,
      onTap: ontap,
      child: Container(
        height: buttonHeight ?? 40,
        width: buttonWidth ?? 100,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: color ?? AppColors.lightBlue,
          ),
          color: AppColors.whiteColor,
        ),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
                color: AppColors.lightBlue,
                fontWeight: FontWeight.w600,
                fontSize: Responsive.isMobile(context) ? 12 : 14),
          ),
        ),
      ),
    );
  }
}
