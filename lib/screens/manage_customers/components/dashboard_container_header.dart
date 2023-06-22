import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:india1_web_ui/screens/manage_customers/components/sort_popup.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_images.dart';
import '../../../constants/app_strings.dart';
import 'drawerlist_heading_text.dart';

class DashBoardContainerHeader extends StatelessWidget {
  const DashBoardContainerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondaryColor,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const DrawerListHeadingText(
            title: AppStrings.customers,
            fontSize: 20,
            color: AppColors.subTitleColor,
          ),
          const DrawerListHeadingText(
            title: ' (254)',
            color: Colors.black,
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              // padding: const EdgeInsets.symmetric(vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.darkGrey),
                  ),
                  hintStyle: const TextStyle(),
                  hintText: AppStrings.searchBy,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColors.darkGrey.withOpacity(0.85), width: 4),
                  ),
                  contentPadding: const EdgeInsets.all(10),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 30,
              width: 30,
              child: SvgPicture.asset(
                AppImages.xlxsIcon,
                color: AppColors.darkGrey,
              ),
            ),
          ),
          SizedBox(
            height: 30,
            width: 30,
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context, builder: (context) =>
                   const SortPopup()
                ,);
              },
              child: SvgPicture.asset(
                AppImages.sortIcon,
                color: AppColors.darkGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

