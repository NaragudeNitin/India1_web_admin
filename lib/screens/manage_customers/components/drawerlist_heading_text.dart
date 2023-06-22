import 'package:flutter/cupertino.dart';

import '../../../constants/app_colors.dart';

class DrawerListHeadingText extends StatelessWidget {
  const DrawerListHeadingText({
    super.key,
    required this.title,
    this.color,
    this.style,
    this.fontWeight,
    this.fontSize,
  });

  final String title;
  final Color? color;
  final TextStyle? style;
  final FontWeight? fontWeight;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        title,
        style: style ?? TextStyle(
          color: color ?? AppColors.primaryTextColor,
          fontWeight: fontWeight ?? FontWeight.w600,
          fontSize: fontSize ?? 16,
        ),
      ),
    );
  }
}
