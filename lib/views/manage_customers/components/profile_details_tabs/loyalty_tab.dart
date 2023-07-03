import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:india1_web_ui/constants/app_colors.dart';
import 'package:india1_web_ui/constants/app_images.dart';
import 'package:india1_web_ui/constants/app_strings.dart';
import 'package:india1_web_ui/responsive.dart';

class LoyaltyTab extends StatefulWidget {
  const LoyaltyTab({super.key});

  @override
  State<LoyaltyTab> createState() => _LoyaltyTabState();
}

class _LoyaltyTabState extends State<LoyaltyTab> {
  @override
  Widget build(BuildContext context) {
    // double fullwidth = MediaQuery.of(context).size.width;
    return Container(
      color: AppColors.secondaryColor,
      padding: const EdgeInsets.all(24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (Responsive.isDesktop(context) ||
                    Responsive.isTablet(context))
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        AppStrings.loyaltyPointsSummery,
                        style: TextStyle(
                            color: AppColors.subTitleColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        color: AppColors.whiteColor,
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            detailsText(AppStrings.balance, '56'),
                            const SizedBox(
                              width: 10,
                            ),
                            detailsText(AppStrings.earned, '163'),
                            const SizedBox(
                              width: 10,
                            ),
                            detailsText(AppStrings.redeemed, '96'),
                          ],
                        ),
                      )
                    ],
                  ),
                if (Responsive.isMobile(context))
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        AppStrings.loyaltyPointsSummery,
                        style: TextStyle(
                            color: AppColors.subTitleColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        color: AppColors.whiteColor,
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            detailsText(AppStrings.balance, '56'),
                            const SizedBox(
                              width: 10,
                            ),
                            detailsText(AppStrings.earned, '163'),
                            const SizedBox(
                              width: 10,
                            ),
                            detailsText(AppStrings.redeemed, '96'),
                          ],
                        ),
                      )
                    ],
                  ),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: SvgPicture.asset(AppImages.xlxsIcon),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            if (Responsive.isMobile(context))
              Column(
                children: [
                  const EarnedPointsContainer(),
                  Container(
                    height: 30,
                    color: AppColors.secondaryColor,
                  ),
                  const RedeemPointsContainer(),
                ],
              ),
            if (Responsive.isDesktop(context) || Responsive.isTablet(context))
              Row(
                children: [
                  const EarnedPointsContainer(),
                  Container(
                    width: 30,
                    color: AppColors.secondaryColor,
                  ),
                  const RedeemPointsContainer(),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget detailsText(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: AppColors.subTitleColor,
            fontWeight: FontWeight.w800,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          description,
          style: const TextStyle(
            color: AppColors.primaryTextColor,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  responsiveWidth() {
    double fullwidth = MediaQuery.of(context).size.width;
    if (Responsive.isDesktop(context)) {
      return fullwidth * 0.8 * 0.4;
    } else if (Responsive.isTablet(context)) {
      return fullwidth * 0.4;
    } else {
      return fullwidth * 0.9;
    }
  }
}

class PointsListTile extends StatelessWidget {
  const PointsListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              '10',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.subTitleColor),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'Recharge',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.subTitleColor),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              '12 dec 2022',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.subTitleColor),
            ),
          ),
        ],
      ),
    );
  }
}

class RedeemPointsContainer extends StatelessWidget {
  const RedeemPointsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    responsiveWidth() {
      double fullwidth = MediaQuery.of(context).size.width;
      if (Responsive.isDesktop(context)) {
        return fullwidth * 0.8 * 0.4;
      } else if (Responsive.isTablet(context)) {
        return fullwidth * 0.4;
      } else {
        return fullwidth * 0.9;
      }
    }

    return Container(
      color: AppColors.whiteColor,
      child: Column(
        children: [
          DropdownMenu(
            width: responsiveWidth(),
            hintText: AppStrings.allWaysOfRedeemingPoints,
            trailingIcon: const Icon(
              Icons.unfold_more_rounded,
              color: AppColors.darkGrey,
            ),
            dropdownMenuEntries: const [],
          ),
          Container(
            width: responsiveWidth(),
            height: 30,
            color: AppColors.secondaryColor,
          ),
          Container(
            height: responsiveWidth(),
            width: responsiveWidth(),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.subTitleColor, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          AppStrings.pointsRedeemed,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          AppStrings.redeemedWay,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          AppStrings.date,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    endIndent: 2,
                    color: AppColors.subTitleColor,
                    thickness: 2,
                    height: 10,
                  ),
                  SizedBox(
                    height: responsiveWidth() - 70,
                    child: ListView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      shrinkWrap: false,
                      itemCount: 7,
                      itemBuilder: (context, index) => const PointsListTile(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EarnedPointsContainer extends StatelessWidget {
  const EarnedPointsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    responsiveWidth() {
      double fullwidth = MediaQuery.of(context).size.width;
      if (Responsive.isDesktop(context)) {
        return fullwidth * 0.8 * 0.4;
      } else if (Responsive.isTablet(context)) {
        return fullwidth * 0.4;
      } else {
        return fullwidth * 0.9;
      }
    }

    return Container(
      color: AppColors.whiteColor,
      child: Column(
        children: [
          DropdownMenu(
            width: responsiveWidth(),
            hintText: AppStrings.allWaysToEarningPoints,
            trailingIcon: const Icon(
              Icons.unfold_more_rounded,
              color: AppColors.darkGrey,
            ),
            dropdownMenuEntries: const [],
          ),
          Container(
            width: responsiveWidth(),
            height: 30,
            color: AppColors.secondaryColor,
          ),
          Container(
            height: responsiveWidth(),
            width: responsiveWidth(),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.subTitleColor, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          AppStrings.pointsEarned,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          AppStrings.earnedWay,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          AppStrings.date,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    endIndent: 2,
                    color: AppColors.subTitleColor,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: responsiveWidth() - 70,
                    child: ListView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      shrinkWrap: false,
                      itemCount: 7,
                      itemBuilder: (context, index) => const PointsListTile(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
