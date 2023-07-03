import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:india1_web_ui/common_widgets/heading_text.dart';
import 'package:india1_web_ui/common_widgets/row_item_widget.dart';
import 'package:india1_web_ui/constants/app_colors.dart';
import 'package:india1_web_ui/constants/app_images.dart';
import 'package:india1_web_ui/constants/app_strings.dart';
import 'package:india1_web_ui/responsive.dart';
import 'components/customer_details_dashboard_header.dart';
import 'components/profile_details_tabs/insurance_tab.dart';
import 'components/profile_details_tabs/loan_tab.dart';
import 'components/profile_details_tabs/loyalty_tab.dart';
import 'components/profile_details_tabs/profile_detail_tab.dart';

class ManageCustomersDetails extends StatefulWidget {
  const ManageCustomersDetails({super.key});

  @override
  State<ManageCustomersDetails> createState() => _ManageCustomersDetailsState();
}

class _ManageCustomersDetailsState extends State<ManageCustomersDetails>
    with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: 4,
      vsync: this,
      initialIndex: 3,
      animationDuration: const Duration(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double fullwidth = MediaQuery.of(context).size.width;
    double fullheight = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ManageCustoDashboardHeader(),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: const SizedBox(
              width: 100,
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.subTitleColor,
                  ),
                  Text(
                    'Back',
                    style: TextStyle(color: AppColors.subTitleColor),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(12),
            color: AppColors.secondaryColor,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      AppStrings.advithPatil,
                      style: TextStyle(
                        color: AppColors.primaryTextColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.teal100,
                          border: Border.all(color: AppColors.teal, width: 2),
                        ),
                      ),
                    ),
                    const Text(AppStrings.active),
                    const Spacer(),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: SvgPicture.asset(AppImages.fileTimer),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 28,
                      width: 28,
                      child: SvgPicture.asset(AppImages.pdficon),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                if (Responsive.isMobile(context))
                  IntrinsicHeight(
                    child: Column(
                      children: [
                        const ProfileInfoHeaderRow(
                          flex: 1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        suspendButton(context, fullheight, fullwidth)
                      ],
                    ),
                  ),
                if (Responsive.isDesktop(context) ||
                    Responsive.isTablet(context))
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        const ProfileInfoHeaderRow(),
                        const Spacer(),
                        suspendButton(context, fullheight, fullwidth)
                      ],
                    ),
                  ),
              ],
            ),
          ),
          //
          // const CustomerInfoTab()

          TabBar(
            controller: _controller,
            unselectedLabelColor: AppColors.primaryTextColor,
            labelColor: AppColors.deepPurple,
            indicatorColor: AppColors.deepPurple,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
            tabs: const [
              Tab(
                text: AppStrings.profileDetails,
              ),
              Tab(
                text: AppStrings.loyalty,
              ),
              Tab(
                text: AppStrings.loan,
              ),
              Tab(
                text: AppStrings.insurance,
              )
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _controller,
              children: const [
                ProfileDetailsTab(),
                LoyaltyTab(),
                LoanTab(),
                InsuranceTab()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget suspendButton(
      BuildContext context, double fullheight, double fullwidth) {
    return InkWell(
      // onHover: ,
      onTap: () => {
        log('this suspend button'),
        showDialog(
          useSafeArea: true,
          context: context,
          builder: (context) =>
              SuspendDialogBox1(fullheight: fullheight, fullwidth: fullwidth),
        )
      },
      child: Container(
        height: 40,
        width: 100,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.lightBlue,
          ),
          color: AppColors.whiteColor,
        ),
        child: const Center(
          child: Text(
            AppStrings.suspend,
            style: TextStyle(
                color: AppColors.lightBlue, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

class ProfileInfoHeaderRow extends StatelessWidget {
  const ProfileInfoHeaderRow({
    super.key,
    this.flex,
  });
  final int? flex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RowItemWidget(
          title: AppStrings.customerId,
          titleColor: AppColors.subTitleColor,
          subtitle: AppStrings.id23900,
          subTitleColor: AppColors.primaryTextColor,
          flex: flex ?? 0,
          height: 50,
        ),
        const SizedBox(
          width: 10,
        ),
        const SizedBox(
          height: 40,
          child: VerticalDivider(
            width: 2,
            color: AppColors.darkGrey,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        RowItemWidget(
          title: AppStrings.cardNumber,
          titleColor: AppColors.subTitleColor,
          subtitle: '112433 XXX SX',
          subTitleColor: AppColors.primaryTextColor,
          flex: flex ?? 0,
          height: 50,
        ),
        const SizedBox(
          width: 10,
        ),
        const SizedBox(
            height: 40,
            child: VerticalDivider(
              width: 2,
              color: AppColors.darkGrey,
            )),
        const SizedBox(
          width: 10,
        ),
        RowItemWidget(
          title: AppStrings.usingMode,
          titleColor: AppColors.subTitleColor,
          subtitle: AppStrings.appVers,
          subTitleColor: AppColors.primaryTextColor,
          flex: flex ?? 0,
          height: 50,
        ),
      ],
    );
  }
}

class SuspendDialogBox1 extends StatelessWidget {
  const SuspendDialogBox1({
    super.key,
    required this.fullheight,
    required this.fullwidth,
  });

  final double fullheight;
  final double fullwidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AlertDialog(
          contentPadding: const EdgeInsets.all(24),
          backgroundColor: Colors.transparent,
          title: Container(
            padding: const EdgeInsets.all(24),
            height: fullheight * 0.75,
            width: fullwidth * 0.75,
            color: AppColors.whiteColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const HeadingText(
                  flex: 0,
                  headingText: AppStrings.suspendingUser,
                  fontSize: 20,
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.w900,
                ),
                const SizedBox(
                  height: 30,
                ),
                const HeadingText(
                  flex: 0,
                  headingText: AppStrings.chooseAReasonforSus,
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownMenu(
                  width: fullwidth * 0.75 * 0.80,
                  hintText: AppStrings.selectoneOfReas,
                  dropdownMenuEntries: const [],
                ),
                const SizedBox(
                  height: 40,
                ),
                const HeadingText(
                    flex: 0, headingText: AppStrings.additionalComments),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: fullwidth * 0.75 * 0.80,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.subTitleColor)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () async {
                    Navigator.pop(context);
                    showDialog(
                      context: context,
                      builder: (context) => Stack(
                        children: [
                          AlertDialog(
                            title: Container(
                              color: Colors.black,
                              padding: const EdgeInsets.all(24),
                              height: fullheight * 0.35,
                              width: fullwidth * 0.45,
                              child: Column(
                                children: [
                                  const Text(
                                    AppStrings.pleaseNote,
                                    style: TextStyle(
                                      color: AppColors.primaryTextColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Text(
                                    AppStrings.onceSuspended,
                                    style: TextStyle(
                                      color: AppColors.primaryTextColor,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  AnimatedContainer(
                                    color: AppColors.lightBlue,
                                    duration: const Duration(milliseconds: 500),
                                    child: Center(
                                      child: TextButton(
                                          onPressed: () {},
                                          child:
                                              const Text(AppStrings.confirm)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            right: fullwidth * 0.10,
                            top: fullheight * 0.10,
                            child: CircleAvatar(
                              backgroundColor: Colors.black45,
                              radius: 30,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.cancel_outlined,
                                  color: Colors.grey.shade200,
                                  fill: 1,
                                  size: 60,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: fullwidth * 0.75 * 0.60,
                    decoration: BoxDecoration(
                      color: AppColors.lightBlue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        AppStrings.continueToSus,
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: fullwidth * 0.10,
          top: fullheight * 0.10,
          child: CircleAvatar(
            backgroundColor: Colors.black45,
            radius: 30,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.cancel,
                color: AppColors.whiteColor,
                fill: 1,
                size: 60,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
