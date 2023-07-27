import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:india1_web_ui/constants/app_colors.dart';
import 'package:india1_web_ui/constants/app_strings.dart';
import 'package:india1_web_ui/views/manage_banners/banner_screen.dart';
import 'package:india1_web_ui/views/manage_customers/components/drawer_list_tile.dart';
import 'package:india1_web_ui/views/manage_notifications/notifications_screen.dart';

import '../constants/app_images.dart';
import '../routes/app_routes_confi.dart';
import '../views/manage_customers/components/drawerlist_heading_text.dart';

class SideBarMenu extends StatelessWidget {
  const SideBarMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.primaryColor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                height: 70,
                width: 90,
                child: SvgPicture.asset(AppImages.india1logo),
              ),
              const SizedBox(
                height: 50,
              ),
              const DrawerListHeadingText(
                title: AppStrings.dashBoard,
              ),
              DrawerListTile(
                title: AppStrings.overview,
                onTap: () {},
              ),

              //manage approvals
              const SizedBox(
                height: 16,
              ),
              const DrawerListHeadingText(
                title: AppStrings.manageApprovals,
              ),
              DrawerListTile(
                title: AppStrings.approv,
                onTap: () {},
              ),

              //managea customers
              const SizedBox(
                height: 16,
              ),
              const DrawerListHeadingText(
                title: AppStrings.manageCustomer,
              ),
              DrawerListTile(
                title: AppStrings.custOverview,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BannerScreen(),
                      ));
                  // GoRouter.of(context)
                  //     .pushNamed(AppRouteConstants.manageCustomers);
                },
              ),

              //manage Products
              const SizedBox(
                height: 16,
              ),
              const DrawerListHeadingText(
                title: AppStrings.managProd,
              ),
              DrawerListTile(
                title: AppStrings.productsOverview,
                onTap: () {},
              ),
              DrawerListTile(
                title: AppStrings.ind1AtmCenters,
                onTap: () {},
              ),
              DrawerListTile(
                title: AppStrings.loan,
                onTap: () {},
              ),
              DrawerListTile(
                title: AppStrings.insurance,
                onTap: () {},
              ),

              //manage Notifications
              const SizedBox(
                height: 16,
              ),
              const DrawerListHeadingText(
                title: AppStrings.manageNoti,
              ),
              DrawerListTile(
                title: AppStrings.notifi,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificationsScreen(),
                      ));
                  // GoRouter.of(context)
                  //     .pushNamed(AppRouteConstants.notifications);
                },
              ),

              //manage banners
              const SizedBox(
                height: 16,
              ),
              const DrawerListHeadingText(
                title: AppStrings.manageBanners,
              ),
              DrawerListTile(
                title: AppStrings.banners,
                onTap: () {
                  // Navigator.push(
                  //     context,
                  // MaterialPageRoute(
                  //   builder: (context) => const BannerScreen(),
                  // ));
                  GoRouter.of(context).pushNamed(AppRouteConstants.banners);
                },
              ),

              //manage India1 team
              const SizedBox(
                height: 16,
              ),
              const DrawerListHeadingText(
                title: AppStrings.manageInd1Tm,
              ),
              DrawerListTile(
                title: AppStrings.ind1Team,
                onTap: () {},
              ),

              //assisted Module
              const SizedBox(
                height: 16,
              ),
              const DrawerListHeadingText(
                title: AppStrings.assistedMod,
              ),
              DrawerListTile(
                title: AppStrings.managePartners,
                onTap: () {},
              ),

              //external Links
              const SizedBox(
                height: 16,
              ),
              const DrawerListHeadingText(
                title: AppStrings.externalLinks,
              ),
              DrawerListTile(
                title: AppStrings.googleAnalytics,
                onTap: () {},
              ),
              DrawerListTile(
                title: AppStrings.loyaltyProgram,
                onTap: () {},
              ),
              DrawerListTile(
                title: AppStrings.loanStatus,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
