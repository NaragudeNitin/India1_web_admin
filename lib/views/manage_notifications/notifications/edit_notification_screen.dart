import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:india1_web_ui/common_widgets/common_text_button.dart';
import 'package:india1_web_ui/common_widgets/heading_text.dart';
import 'package:india1_web_ui/constants/app_colors.dart';
import 'package:india1_web_ui/constants/app_images.dart';
import 'package:india1_web_ui/constants/app_strings.dart';

import '../../../common_widgets/common_back_button.dart';
import '../../../common_widgets/common_pop_up_alertbox.dart';
import '../../../common_widgets/side_menu_bar.dart';
import '../../../common_widgets/tablet_mode_dashboard_header.dart';
import '../../../controllers/menucontroller.dart';

class EditNotification extends StatefulWidget {
  const EditNotification({super.key});

  @override
  State<EditNotification> createState() => _EditNotificationState();
}

class _EditNotificationState extends State<EditNotification> {
  @override
  Widget build(BuildContext context) {
    double fullwidth = MediaQuery.of(context).size.width;
    // double fullheight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: MenuAppController().scaffoldKey,
      drawer: const SideBarMenu(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TabletModeDashBoardHeader(),
              const SizedBox(
                height: 24,
              ),
              CommonBackButton(
                onpressed: () {
                  log('edition notification back pressed');
                  Navigator.pop(context);
                },
              ),
              Container(
                width: fullwidth,
                padding: const EdgeInsets.all(20),
                color: AppColors.primaryColor,
                child: Row(
                  // alignment: WrapAlignment.center,
                  // crossAxisAlignment: WrapCrossAlignment.center,
                  // spacing: 24,
                  // runSpacing: 24,
                  children: [
                    Switch.adaptive(
                        value: true,
                        onChanged: (value) {
                          if (value == true) {
                            showDialog(
                              context: context,
                              builder: (context) => const PopUpAlertDialog(
                                popUpHeading: AppStrings.pleaseNote,
                                popUpDescription: AppStrings.onceDiabled,
                                buttonName: AppStrings.continueTodisable,
                              ),
                            );
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) => const PopUpAlertDialog(
                                popUpHeading: AppStrings.pleaseNote,
                                popUpDescription: AppStrings.onceEnabled,
                                buttonName: AppStrings.continueToEnable,
                              ),
                            );
                          }
                        },
                        activeColor: AppColors.teal),
                    const Expanded(child: Text(AppStrings.notificationType)),
                    const Spacer(),
                    Row(
                      children: [
                        CommonTextButton(
                          buttonName: AppStrings.delete,
                          ontap: () {
                            showDialog(
                              context: context,
                              builder: (context) => const PopUpAlertDialog(
                                popUpHeading: AppStrings.pleaseNote,
                                popUpDescription: AppStrings.onceDeleted,
                                buttonName: AppStrings.continueToDelete,
                              ),
                            );
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: SvgPicture.asset(
                            AppImages.pdficon,
                          ),
                        ),
                      ],
                    ),
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
                      width: fullwidth * 0.80,
                      dropdownMenuEntries: const [],
                      hintText: AppStrings.english,
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
                        hintText: AppStrings.earnPointsForRegistrationToApp,
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
                        hintText: AppStrings.congratsYouEarnedPoints,
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
                        hintText: AppStrings.earnPointsForRegistrationToApp,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Wrap(
                      runSpacing: 24,
                      spacing: 30,
                      children: [
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
                          child: const Text(AppStrings.previewBeforeSaving),
                        ),
                        CommonTextButton(
                          buttonName: AppStrings.saveChanges,
                          buttonWidth: 120,
                          ontap: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: CommonPopUpContainer(
                                  popUpHeading: AppStrings.savedSuccessfully,
                                  popUpDescription: AppStrings.changesHaveBeen,
                                  buttonName: AppStrings.ok,
                                  onPressed: () => Navigator.pop(context),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    )
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
