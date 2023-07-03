import 'dart:developer';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:india1_web_ui/common_widgets/common_back_button.dart';
import 'package:india1_web_ui/common_widgets/side_menu_bar.dart';
import 'package:india1_web_ui/common_widgets/tablet_mode_dashboard_header.dart';
import 'package:india1_web_ui/responsive.dart';

import '../../../common_widgets/heading_text.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_strings.dart';
import '../../../controllers/menucontroller.dart';

class AddNotificationPage extends StatefulWidget {
  const AddNotificationPage({super.key});

  @override
  State<AddNotificationPage> createState() => _AddNotificationPageState();
}

class _AddNotificationPageState extends State<AddNotificationPage> {
  @override
  Widget build(BuildContext context) {
    double fullwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const SideBarMenu(),
      key: MenuAppController().scaffoldKey,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const TabletModeDashBoardHeader(),
              const SizedBox(
                height: 20,
              ),
              CommonBackButton(
                onpressed: () {
                  log('add notification back pressed');
                  Navigator.pop(context);
                },
              ),
              Container(
                width: double.infinity,
                color: AppColors.primaryColor,
                padding: const EdgeInsets.all(20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingText(
                      headingText: AppStrings.addNotification,
                      flex: 0,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    HeadingText(
                      headingText: AppStrings.pleaseNoteThisNoti,
                      flex: 0,
                      fontWeight: FontWeight.w500,
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                color: AppColors.secondaryColor,
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HeadingText(
                      headingText: AppStrings.language,
                      fontSize: 14,
                      flex: 0,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DropdownMenu(
                      width: Responsive.isDesktop(context) ||
                              Responsive.isTablet(context)
                          ? fullwidth * 0.88
                          : fullwidth * 80,
                      dropdownMenuEntries: const [],
                      hintText: AppStrings.english,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const HeadingText(
                      headingText:
                          '${AppStrings.whomToSend} (${AppStrings.uploadUsersWhom})',
                      fontSize: 14,
                      flex: 0,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.file_upload_outlined,
                          color: AppColors.lightBlue,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const HeadingText(
                      headingText: AppStrings.notificationType,
                      fontSize: 14,
                      flex: 0,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const HeadingText(
                      headingText: AppStrings.subject,
                      fontSize: 14,
                      flex: 0,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const HeadingText(
                      headingText: AppStrings.notificationType,
                      fontSize: 14,
                      flex: 0,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const HeadingText(
                      headingText: AppStrings.scheduleNotification,
                      flex: 0,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DottedLine(
                      dashColor: AppColors.darkGrey.withOpacity(0.40),
                      dashLength: 7,
                      lineThickness: 2,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Wrap(
                      spacing: 30,
                      runSpacing: 24,
                      children: [
                        ScheduleNotificationDropdown(
                          dropdownTitle:
                              '${AppStrings.activeFrom} -${AppStrings.activeUntill}',
                        ),
                        ScheduleNotificationDropdown(
                          dropdownTitle: AppStrings.frequency,
                        ),
                        ScheduleNotificationDropdown(
                          dropdownTitle:
                              '${AppStrings.days2} - ${AppStrings.date}',
                        ),
                        ScheduleNotificationDropdown(
                          dropdownTitle: AppStrings.frequency,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(
                          Size(160, 50),
                        ),
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.all(10),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(AppStrings.save),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScheduleNotificationDropdown extends StatelessWidget {
  const ScheduleNotificationDropdown({
    super.key,
    required this.dropdownTitle,
  });
  final String dropdownTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText(
          headingText: dropdownTitle,
          flex: 0,
        ),
        const DropdownMenu(width: 250, dropdownMenuEntries: []),
      ],
    );
  }
}
