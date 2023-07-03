import 'dart:developer';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:india1_web_ui/common_widgets/common_back_button.dart';
import 'package:india1_web_ui/common_widgets/common_text_button.dart';
import 'package:india1_web_ui/common_widgets/desktop_mode_dashboard_header.dart';
import 'package:india1_web_ui/common_widgets/heading_text.dart';
import 'package:india1_web_ui/common_widgets/tablet_mode_dashboard_header.dart';
import 'package:india1_web_ui/constants/app_colors.dart';
import 'package:india1_web_ui/constants/app_images.dart';
import 'package:india1_web_ui/constants/app_strings.dart';
import 'package:india1_web_ui/responsive.dart';
import 'package:india1_web_ui/views/manage_notifications/notifications/add_notification_page.dart';
import 'package:india1_web_ui/views/manage_notifications/notifications/edit_notification_screen.dart';

import 'notification_type_list_tile.dart';

class NotificationsDashBoard extends StatelessWidget {
  const NotificationsDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    double fullwidth = MediaQuery.of(context).size.width;
    double fullheight = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          if (Responsive.isMobile(context) || Responsive.isTablet(context))
            const TabletModeDashBoardHeader(),
          if (Responsive.isDesktop(context)) const DesktopModeDashboardHeader(),
          const SizedBox(
            height: 20,
          ),
          const CommonBackButton(),
          Container(
            color: AppColors.secondaryColor,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isMobile(context))
                  Column(
                    children: [
                      Row(
                        children: [
                          const Text('${AppStrings.notifications} (7)'),
                          const Spacer(),
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset(AppImages.xlxsIcon),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          DropdownMenu(
                            width: Responsive.isMobile(context)
                                ? fullwidth * 0.35
                                : fullwidth * 0.40,
                            hintText: AppStrings.allCategories,
                            dropdownMenuEntries: const [],
                          ),
                          const Spacer(),
                          CommonTextButton(
                            buttonWidth: Responsive.isMobile(context)
                                ? fullwidth * 0.35
                                : fullwidth * 0.40,
                            buttonName: AppStrings.addNotification,
                            ontap: () {
                              log('add notification button pressed');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const AddNotificationPage(),
                                ),
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  )
                else
                  Row(
                    children: [
                      const Text('${AppStrings.notifications} (7)'),
                      const Spacer(),
                      DropdownMenu(
                        width: Responsive.isDesktop(context)
                            ? fullwidth * 0.7 * 0.26
                            : fullwidth * 0.3,
                        hintText: AppStrings.allCategories,
                        dropdownMenuEntries: const [],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CommonTextButton(
                        buttonWidth: Responsive.isDesktop(context)
                            ? fullwidth * 0.7 * 0.26
                            : fullwidth * 0.25,
                        buttonName: AppStrings.addNotification,
                        ontap: () {
                          log('add notification button pressed');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AddNotificationPage(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: SvgPicture.asset(AppImages.xlxsIcon),
                      ),
                    ],
                  ),
                const SizedBox(
                  height: 20,
                ),
                const HeadingText(
                  headingText: AppStrings.type,
                  flex: 0,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(
                  height: 20,
                ),
                DottedLine(
                  dashColor: AppColors.darkGrey.withOpacity(0.20),
                  lineThickness: 2,
                  dashLength: 9,
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  child: SizedBox(
                    height: Responsive.isMobile(context)
                        ? fullheight * 0.45
                        : fullheight * 0.55,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) => NotificationTypeTile(
                        notificationType:
                            AppStrings.earnPointsForRegistrationToApp,
                        subject: AppStrings.congratsYouEarnedPoints,
                        description: AppStrings.youEarned10pts,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EditNotification(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
