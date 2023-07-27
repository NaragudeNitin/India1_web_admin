import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common_widgets/common_pop_up_alertbox.dart';
import '../../../../common_widgets/heading_text.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_images.dart';
import '../../../../constants/app_strings.dart';

class BannerHistoryPopUpAlert extends StatelessWidget {
  const BannerHistoryPopUpAlert({
    super.key,
    required this.fullheight,
    required this.fullwidth,
  });

  final double fullheight;
  final double fullwidth;

  @override
  Widget build(BuildContext context) {
    return PopUpAlertDialog(
      child: Container(
        color: Colors.white,
        height: fullheight * 0.7,
        width: fullwidth * 0.8,
        padding: defaultPadding,
        child: Column(
          children: [
            Row(
              children: [
                const HeadingText(
                  headingText:
                      '${AppStrings.editBanner} - ${AppStrings.history}',
                ),
                const SizedBox(
                  width: 5,
                ),
                const Expanded(
                  flex: 1,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search_sharp),
                      hintText: AppStrings.searchByChangedBy,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const DropdownMenu(
                  hintText: AppStrings.overallAndHeader,
                  dropdownMenuEntries: [],
                ),
                const SizedBox(
                  width: 5,
                ),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: SvgPicture.asset(
                    AppImages.xlxsIcon,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.subTitleColor, width: 2),
                ),
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) => const BannerHistoryTile(
                    changed: AppStrings.changed,
                    field: AppStrings.field,
                    prevValue: '${AppStrings.value} (${AppStrings.previous})',
                    newValue: '${AppStrings.value} (New)',
                    changedBy: AppStrings.changedBy,
                    changedOn: AppStrings.changedOn,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BannerHistoryTile extends StatelessWidget {
  const BannerHistoryTile({
    super.key,
    required this.changed,
    required this.field,
    required this.prevValue,
    required this.newValue,
    required this.changedBy,
    required this.changedOn,
  });

  final String changed;
  final String field;
  final String prevValue;
  final String newValue;
  final String changedBy;
  final String changedOn;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadingText(
                    headingText: changed,
                    flex: 0,
                    color: AppColors.primaryTextColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  HeadingText(
                    headingText: field,
                    flex: 0,
                    color: AppColors.subTitleColor,
                  ),
                ],
              ),
            ),
            HeadingText(
              headingText: prevValue,
            ),
            HeadingText(
              headingText: newValue,
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  HeadingText(
                    headingText: changedBy,
                    flex: 0,
                    color: AppColors.primaryTextColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  HeadingText(
                    headingText: changedOn,
                    flex: 0,
                    color: AppColors.subTitleColor,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          color: AppColors.subTitleColor,
          thickness: 2,
        )
      ],
    );
  }
}
