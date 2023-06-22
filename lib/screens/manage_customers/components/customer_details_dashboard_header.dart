import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:india1_web_ui/responsive.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_images.dart';

class ManageCustoDashboardHeader extends StatelessWidget {
  const ManageCustoDashboardHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    if (Responsive.isTablet(context)) {
      return Row(
        children: [
          IconButton(
            onPressed: () {
             
              Scaffold.maybeOf(context)!.openDrawer();
              // if (Scaffold.of(context).hasDrawer) {
              //   Scaffold.of(context).closeDrawer();
              // }
       
            },
            icon: const Icon(Icons.menu),
          ),
          const Spacer(),
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
              color: AppColors.darkGrey,
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
    } else if(Responsive.isMobile(context)){
      return Row(
        children: [
          IconButton(
            onPressed: () {
             
              Scaffold.maybeOf(context)!.openDrawer();
              // if (Scaffold.of(context).hasDrawer) {
              //   Scaffold.of(context).closeDrawer();
              // }
       
            },
            icon: const Icon(Icons.menu),
          ),
          const Spacer(),
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
              color: AppColors.darkGrey,
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
            color: AppColors.darkGrey,
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

