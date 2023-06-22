import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:india1_web_ui/constants/app_colors.dart';
import 'package:india1_web_ui/constants/app_strings.dart';
import 'package:india1_web_ui/responsive.dart';

import '../../../../common_widgets/heading_text.dart';
import '../../../../constants/app_images.dart';

class LoanTab extends StatefulWidget {
  const LoanTab({super.key});

  @override
  State<LoanTab> createState() => _LoanTabState();
}

class _LoanTabState extends State<LoanTab> {
  @override
  Widget build(BuildContext context) {
    double fullwidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      color: AppColors.secondaryColor,
      child: Container(
        color: AppColors.white,
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              if(Responsive.isDesktop(context) || Responsive.isTablet(context)) Row(
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
                    width: Responsive.isDesktop(context)
                        ? fullwidth * 0.7 * 0.27
                        : fullwidth * 0.27,
                    hintText: AppStrings.searchByLoanType,
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

              if (Responsive.isMobile(context))Column(
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
                  const SizedBox(height: 20,),
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
                  ],)
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
                        HeadingText(headingText: AppStrings.loanTypeAppliedOn),
                        HeadingText(headingText: AppStrings.loanTypeAppliedOn),
                        HeadingText(headingText: AppStrings.loanTypeAppliedOn),
                        HeadingText(headingText: AppStrings.loanTypeAppliedOn),
              
                      ],
                    ),
                    const Divider(),
                    SizedBox(
                      height: 600,
                      child: ListView.builder(
                        itemCount: 9,
                        itemBuilder: (context, index) => const LoanInfoListTile(loanType: 'Personal Loan', appliedOn: '01 Nov 2022', loanStatus: 'Approved', dateOfAction: '15 Nov 2022', provider: 'Policy Haat', lender: 'Bajaj Bank'),),
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


class LoanInfoListTile extends StatelessWidget {
  const LoanInfoListTile({
    super.key, required this.loanType, required this.appliedOn, required this.loanStatus, required this.dateOfAction, required this.provider, required this.lender, this.loanStatusColor,
  });

  final String loanType;
  final String appliedOn;
  final String loanStatus;
  final String? dateOfAction;
  final String provider;
  final String lender;
  final Color? loanStatusColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20,),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(loanType,style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.primaryTextColor,
                    fontWeight: FontWeight.w500,

                  ),),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    appliedOn,
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
                  Text(loanStatus,style: TextStyle(
                    fontSize: 14,
                    color: loanStatusColor ?? AppColors.primaryTextColor,
                    fontWeight: FontWeight.w500,

                  ),),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    dateOfAction ?? '',
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
              child: 
                  Text(provider,style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.primaryTextColor,
                    fontWeight: FontWeight.w500,

                  ),),
            ),
            Expanded(
              flex: 1,
              child: 
                  Text(lender,style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.primaryTextColor,
                    fontWeight: FontWeight.w500,

                  ),),
            ),
          ],
        ),
        const SizedBox(height: 20,),
        const Divider(color: AppColors.subTitleColor,)
      ],
    );
  }
}
