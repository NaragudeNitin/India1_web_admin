import 'dart:developer';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:india1_web_ui/common_widgets/heading_text.dart';

import '../../../common_widgets/common_back_button.dart';
import '../../../common_widgets/common_pop_up_alertbox.dart';
import '../../../common_widgets/common_text_button.dart';
import '../../../common_widgets/side_menu_bar.dart';
import '../../../common_widgets/tablet_mode_dashboard_header.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_images.dart';
import '../../../constants/app_strings.dart';
import '../../../controllers/menucontroller.dart';

class EditBannerScreen extends StatefulWidget {
  const EditBannerScreen({super.key});

  @override
  State<EditBannerScreen> createState() => _EditBannerScreenState();
}

class _EditBannerScreenState extends State<EditBannerScreen> {
  @override
  Widget build(BuildContext context) {
    double fullwidth = MediaQuery.of(context).size.width;
    double fullheight = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: const SideBarMenu(),
      key: MenuAppController().scaffoldKey,
      body: Container(
        padding: defaultPadding,
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
                  const Expanded(
                    child: Text(
                      AppStrings.banner1,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
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
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: defaultPadding,
              color: AppColors.secondaryColor,
              child: const Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.bannerName,
                          style: TextStyle(
                              color: AppColors.primaryTextColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: AppStrings.banner1,
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.bannerAspectRatio,
                          style: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: '2.94:1',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.bannerPlacement,
                          style: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: '1',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const HeadingText(
                headingText: AppStrings.uploadBannerdetailsinDiffLang),
            SingleChildScrollView(
              child: Container(
                color: AppColors.secondaryColor,
                height: fullheight * 0.45,
                padding: defaultPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        HeadingText(
                          headingText:
                              '${AppStrings.enable} / ${AppStrings.disable}',
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        HeadingText(
                          flex: 2,
                          headingText: AppStrings.addLanguage,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        HeadingText(
                          flex: 2,
                          headingText:
                              '${AppStrings.addTextWithImage}(${AppStrings.upto1kb}) ',
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        HeadingText(
                          flex: 2,
                          headingText: AppStrings.addredirectionLink,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        HeadingText(
                          headingText: AppStrings.delete,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        HeadingText(
                          headingText: AppStrings.preview,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DottedLine(
                      lineLength: 8,
                      dashColor: AppColors.darkGrey.withOpacity(0.3),
                    ),
                    const BannerDetailsTile(),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_circle,
                            color: AppColors.lightBlue,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          AppStrings.addNewRow,
                          style: TextStyle(color: AppColors.lightBlue),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text(AppStrings.save)),
          ],
        ),
      ),
    );
  }
}

class BannerDetailsTile extends StatelessWidget {
  const BannerDetailsTile({
    super.key,
  });

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
              child: Switch(
                value: true,
                onChanged: (value) {},
                activeColor: AppColors.teal,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Expanded(
              flex: 2,
              child: DropdownMenu(
                hintText: ' SelectLanguage',
                dropdownMenuEntries: [],
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Expanded(
              flex: 2,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Banner Image',
                  suffixIcon: Icon(
                    Icons.file_upload_outlined,
                    color: AppColors.lightBlue,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Expanded(
              flex: 2,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'redirection Link',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Expanded(
              child: Icon(
                Icons.delete,
                color: AppColors.lightBlue,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Expanded(
              child: Icon(
                Icons.remove_red_eye,
                color: AppColors.lightBlue,
              ),
            ),
          ],
        )
      ],
    );
  }
}
