import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/app_colors.dart';
import '../constants/app_images.dart';

class DesktopModeDashboardHeader extends StatelessWidget {
  const DesktopModeDashboardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
            //to do searching
            const SnackBar(
              content: Text(
                'You have tapped on notification ',
                style: TextStyle(color: AppColors.darkGrey),
              ),
            );
          },
          child: SvgPicture.asset(
            AppImages.searchIcon,
            colorFilter:
                const ColorFilter.mode(AppColors.darkGrey, BlendMode.srcIn),
            height: 25,
            width: 25,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {
            log('You have tapped on notification');
            const SnackBar(content: Text('You have tapped on notification '));
          },
          child: SvgPicture.asset(
            AppImages.notifiIcon,
            color: AppColors.darkGrey,
            height: 30,
            width: 30,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Icon(
          Icons.person_3,
          color: AppColors.darkGrey,
          size: 30,
        )
      ],
    );
  }
}
