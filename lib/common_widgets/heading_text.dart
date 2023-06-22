import 'package:flutter/cupertino.dart';

import '../constants/app_colors.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({
    super.key,
    required this.headingText,
    this.color,
    this.fontSize,
    this.fontWeight, this.flex,
  });
  final String headingText;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final int? flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: Text(
        headingText,
        style: TextStyle(
          color: color ?? AppColors.darkGrey,
          fontSize: fontSize ?? 14,
          fontWeight: fontWeight ?? FontWeight.w600,
        ),
      ),
    );
  }
}