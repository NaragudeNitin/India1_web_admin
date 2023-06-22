import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class RowItemWidget extends StatelessWidget {
  const RowItemWidget({
    super.key,
    required this.title,
    required this.subtitle,
    this.flex,
    this.titleColor,
    this.subTitleColor, this.fontWeight, this.fontSize, this.height,
  });

  final String title;
  final String? subtitle;
  final int? flex;
  final Color? titleColor;
  final Color? subTitleColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style:  TextStyle(
                  overflow: TextOverflow.visible,
                  color: titleColor ?? AppColors.darkGrey,
                  fontWeight: fontWeight ?? FontWeight.w800,
                  fontSize: fontSize,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                subtitle ?? '',
                style:  TextStyle(
                  overflow: TextOverflow.visible,
                  color: subTitleColor ?? AppColors.subTitleColor,
                  fontWeight: fontWeight ?? FontWeight.w500,
                  fontSize: fontSize,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}