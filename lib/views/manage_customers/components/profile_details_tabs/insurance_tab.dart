import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:india1_web_ui/constants/app_colors.dart';
import 'package:india1_web_ui/constants/app_strings.dart';
import 'package:india1_web_ui/responsive.dart';

import '../../../../common_widgets/heading_text.dart';
import '../../../../constants/app_images.dart';

class InsuranceTab extends StatefulWidget {
  const InsuranceTab({super.key});

  @override
  State<InsuranceTab> createState() => _InsuranceTabState();
}

class _InsuranceTabState extends State<InsuranceTab> {
  @override
  Widget build(BuildContext context) {
    double fullwidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      color: AppColors.secondaryColor,
      child: Container(
        color: AppColors.whiteColor,
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (Responsive.isDesktop(context) || Responsive.isTablet(context))
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      AppStrings.insurance,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.subTitleColor),
                    ),
                    const Spacer(),
                    DropdownMenu(
                      width: Responsive.isDesktop(context)
                          ? fullwidth * 0.7 * 0.4
                          : fullwidth * 0.4,
                      hintText: AppStrings.searchByLoanType,
                      dropdownMenuEntries: const [],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    DropdownMenu(
                      leadingIcon: const Icon(Icons.calendar_today),
                      width: Responsive.isDesktop(context)
                          ? fullwidth * 0.7 * 0.27
                          : fullwidth * 0.27,
                      hintText: AppStrings.appliedDateRange,
                      dropdownMenuEntries: const [],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: SvgPicture.asset(AppImages.xlxsIcon),
                    ),
                  ],
                ),

              if (Responsive.isMobile(context))
                Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "Loan",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.subTitleColor),
                        ),
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
                    Wrap(
                      runSpacing: 20,
                      children: [
                        DropdownMenu(
                          width: fullwidth * 0.65,
                          hintText: AppStrings.searchByLoanType,
                          dropdownMenuEntries: const [],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        DropdownMenu(
                          width: fullwidth * 0.65,
                          hintText: AppStrings.searchByLoanType,
                          dropdownMenuEntries: const [],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                      ],
                    )
                  ],
                ),

              const SizedBox(
                height: 30,
              ),
              // const LoanInfoListTile()
              SizedBox(
                child: Column(
                  children: [
                    const Row(
                      children: [
                        HeadingText(headingText: AppStrings.typePurchasedOn),
                        HeadingText(headingText: AppStrings.status),
                        HeadingText(headingText: AppStrings.provider),
                        HeadingText(headingText: AppStrings.premiumAmt),
                        HeadingText(headingText: AppStrings.renewalPeriod)
                      ],
                    ),
                    const Divider(),
                    SizedBox(
                      height: 600,
                      child: ListView.builder(
                        itemCount: 9,
                        itemBuilder: (context, index) =>
                            const InsuranceInfoListTile(
                          type: 'Personal accidents',
                          purchasedOn: '23 Dec 2022',
                          status: 'Successful',
                          provider: 'Paid',
                          premiumAmt: 'Rs 26,428',
                          renewalPeriod: '1 year',
                          statusPaidUnpaid: 'Paid',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Text(MediaQuery.of(context).size.width.toString() + '700 chya khali ala ki scroll view lavaycha')
            ],
          ),
        ),
      ),
    );
  }
}

class InsuranceInfoListTile extends StatelessWidget {
  const InsuranceInfoListTile({
    super.key,
    this.loanStatusColor,
    required this.type,
    required this.purchasedOn,
    required this.status,
    this.statusPaidUnpaid,
    required this.provider,
    required this.premiumAmt,
    required this.renewalPeriod,
  });

  final String type;
  final String purchasedOn;
  final String status;
  final String? statusPaidUnpaid;
  final String provider;
  final String premiumAmt;
  final String renewalPeriod;
  final Color? loanStatusColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    type,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.primaryTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    purchasedOn,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.subTitleColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    status,
                    style: TextStyle(
                      fontSize: 14,
                      color: loanStatusColor ?? AppColors.primaryTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    statusPaidUnpaid ?? '',
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.subTitleColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                provider,
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                premiumAmt,
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                renewalPeriod,
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          color: AppColors.subTitleColor,
        )
      ],
    );
  }
}
