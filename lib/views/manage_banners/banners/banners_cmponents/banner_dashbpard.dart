import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:india1_web_ui/common_widgets/common_text_button.dart';
import 'package:india1_web_ui/common_widgets/heading_text.dart';
import 'package:india1_web_ui/constants/app_colors.dart';
import 'package:india1_web_ui/constants/app_strings.dart';

import '../../../../common_widgets/desktop_mode_dashboard_header.dart';
import '../../../../common_widgets/tablet_mode_dashboard_header.dart';
import '../../../../constants/app_images.dart';
import '../../../../responsive.dart';

class BannerDashBoard extends StatefulWidget {
  const BannerDashBoard({super.key});

  @override
  State<BannerDashBoard> createState() => _BannerDashBoardState();
}

class _BannerDashBoardState extends State<BannerDashBoard> {
  @override
  Widget build(BuildContext context) {
    double fullwidth = MediaQuery.of(context).size.width;
    double fullheight = MediaQuery.of(context).size.height;
    return Container(
      padding: defaultPadding,
      child: Column(
        children: [
          if (Responsive.isMobile(context) || Responsive.isTablet(context))
            const TabletModeDashBoardHeader(),
          if (Responsive.isDesktop(context)) const DesktopModeDashboardHeader(),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: fullheight * 0.80,
            width: fullwidth,
            padding: defaultPadding,
            color: AppColors.secondaryColor,
            child: Column(
              children: [
                Row(
                  children: [
                    const HeadingText(
                      headingText: AppStrings.banners,
                      flex: 0,
                    ),
                    const Spacer(),
                    const CommonTextButton(
                      buttonName: AppStrings.addNewBanner,
                      buttonWidth: 150,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: SvgPicture.asset(AppImages.xlxsIcon),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    HeadingText(
                      headingText: AppStrings.type,
                    ),
                    HeadingText(
                      headingText: AppStrings.bannerAspectRatio,
                    ),
                    HeadingText(
                      headingText: AppStrings.bannerImage,
                    ),
                    HeadingText(
                      headingText: '',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                DottedLine(
                  dashColor: AppColors.darkGrey.withOpacity(0.3),
                  dashGapLength: 5,
                  dashLength: 8,
                  lineThickness: 2,
                ),
                SizedBox(
                  height: fullheight * 0.60,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) => const BannerListTile(),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BannerListTile extends StatelessWidget {
  const BannerListTile({
    super.key,
    this.type,
    this.bannerAspectRatio,
    this.bannerImage,
    this.onPressed,
  });

  final String? type;
  final String? bannerAspectRatio;
  final String? bannerImage;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            HeadingText(
              headingText: type ?? AppStrings.banner1,
              color: AppColors.subTitleColor,
            ),
            HeadingText(
              headingText: bannerAspectRatio ?? '2.94:1',
              color: AppColors.subTitleColor,
            ),
            HeadingText(
              headingText: bannerImage ?? 'loan-Banner.png',
              color: AppColors.lightBlue,
            ),
            Expanded(
              child: IconButton(
                onPressed: onPressed,
                icon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppColors.lightBlue,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Divider(
          color: AppColors.subTitleColor.withOpacity(0.3),
          thickness: 2,
        ),
      ],
    );
  }
}
