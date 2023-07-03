import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CommonBackButton extends StatelessWidget {
  const CommonBackButton({
    super.key,
    this.onpressed,
  });
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      child: const Row(
        children: [
          Icon(
            Icons.arrow_back_ios,
            size: 12,
            color: AppColors.subTitleColor,
          ),
          Text(
            'Back',
            style: TextStyle(color: AppColors.subTitleColor),
          ),
        ],
      ),
    );
  }
}
