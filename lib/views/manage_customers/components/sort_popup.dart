import 'package:flutter/material.dart';
import 'package:india1_web_ui/constants/app_strings.dart';
import 'package:india1_web_ui/responsive.dart';

import '../../../constants/app_colors.dart';

class SortPopup extends StatelessWidget {
  const SortPopup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        color: Colors.transparent,
        height: deviceHeight * 60,
        width: deviceWidth * 90,
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: deviceHeight * 0.55,
            width: deviceWidth * 0.8,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            color: AppColors.whiteColor,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        AppStrings.asdvancefilter,
                        style: TextStyle(
                          color: AppColors.primaryTextColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          AppStrings.applyFilters,
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SortingHeaderText(title: AppStrings.byRegistration),
                  const SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 20,
                    children: [
                      DropdownMenu(
                          trailingIcon: Icon(
                            Icons.unfold_more_rounded,
                            color: AppColors.darkGrey.withOpacity(0.9),
                          ),
                          width: Responsive.isMobile(context)
                              ? deviceWidth * 0.8 * 0.7
                              : deviceWidth * 0.8 * 0.4,
                          hintText: AppStrings.installAppAndRegi,
                          dropdownMenuEntries: const []),
                      const SizedBox(
                        width: 20,
                      ),
                      DropdownMenu(
                        trailingIcon: Icon(
                          Icons.unfold_more_rounded,
                          color: AppColors.darkGrey.withOpacity(0.9),
                        ),
                        width: Responsive.isMobile(context)
                            ? deviceWidth * 0.8 * 0.7
                            : deviceWidth * 0.8 * 0.4,
                        enableFilter: true,
                        enableSearch: true,
                        hintText: AppStrings.registDateRange,
                        leadingIcon: const Icon(
                          Icons.date_range_rounded,
                          color: AppColors.darkGrey,
                        ),
                        dropdownMenuEntries: const [],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 20,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SortingHeaderText(title: AppStrings.byStatus),
                          const SizedBox(
                            height: 10,
                          ),
                          DropdownMenu(
                            trailingIcon: Icon(
                              Icons.unfold_more_rounded,
                              color: AppColors.darkGrey.withOpacity(0.9),
                            ),
                            width: Responsive.isMobile(context)
                                ? deviceWidth * 0.8 * 0.7
                                : deviceWidth * 0.8 * 0.4,
                            enableFilter: true,
                            enableSearch: true,
                            hintText: AppStrings.allStatus,
                            //PASS the list of dropdown menu entries
                            dropdownMenuEntries: const [],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SortingHeaderText(
                              title: AppStrings.byCustomerEarPoints),
                          const SizedBox(
                            height: 10,
                          ),
                          DropdownMenu(
                            trailingIcon: Icon(
                              Icons.unfold_more_rounded,
                              color: AppColors.darkGrey.withOpacity(0.9),
                            ),
                            width: Responsive.isMobile(context)
                                ? deviceWidth * 0.8 * 0.7
                                : deviceWidth * 0.8 * 0.4,
                            enableFilter: true,
                            enableSearch: true,
                            hintText: AppStrings.allWays,
                            dropdownMenuEntries: const [],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 20,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SortingHeaderText(
                              title: AppStrings.byDownloads),
                          const SizedBox(
                            height: 10,
                          ),
                          DropdownMenu(
                            trailingIcon: Icon(
                              Icons.unfold_more_rounded,
                              color: AppColors.darkGrey.withOpacity(0.9),
                            ),
                            width: Responsive.isMobile(context)
                                ? deviceWidth * 0.8 * 0.7
                                : deviceWidth * 0.8 * 0.4,
                            enableFilter: true,
                            enableSearch: true,
                            hintText: AppStrings.allVersions,
                            //PASS the list of dropdown menu entries
                            dropdownMenuEntries: const [],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SortingHeaderText(
                              title: AppStrings.byConverRate),
                          const SizedBox(
                            height: 10,
                          ),
                          DropdownMenu(
                            trailingIcon: Icon(
                              Icons.unfold_more_rounded,
                              color: AppColors.darkGrey.withOpacity(0.9),
                            ),
                            width: Responsive.isMobile(context)
                                ? deviceWidth * 0.8 * 0.7
                                : deviceWidth * 0.8 * 0.4,
                            enableFilter: true,
                            enableSearch: true,
                            hintText: AppStrings.atmToApp,
                            dropdownMenuEntries: const [],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SortingHeaderText(
                          title: AppStrings.byCustomerRedeemingPoints),
                      const SizedBox(
                        height: 10,
                      ),
                      DropdownMenu(
                        trailingIcon: Icon(
                          Icons.unfold_more_rounded,
                          color: AppColors.darkGrey.withOpacity(0.9),
                        ),
                        width: Responsive.isMobile(context)
                            ? deviceWidth * 0.8 * 0.7
                            : deviceWidth * 0.8 * 0.4,
                        enableFilter: true,
                        enableSearch: true,
                        hintText: AppStrings.allWays,
                        dropdownMenuEntries: const [],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SortingHeaderText(title: AppStrings.byLocation),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    spacing: 40,
                    runSpacing: 20,
                    children: [
                      DropdownMenu(
                        trailingIcon: Icon(
                          Icons.unfold_more_rounded,
                          color: AppColors.darkGrey.withOpacity(0.9),
                        ),
                        width: Responsive.isMobile(context)
                            ? deviceWidth * 0.8 * 0.7
                            : deviceWidth * 0.8 * 0.4,
                        enableFilter: true,
                        enableSearch: true,
                        hintText: AppStrings.allStates,
                        dropdownMenuEntries: const [],
                      ),
                      DropdownMenu(
                        trailingIcon: Icon(
                          Icons.unfold_more_rounded,
                          color: AppColors.darkGrey.withOpacity(0.9),
                        ),
                        width: Responsive.isMobile(context)
                            ? deviceWidth * 0.8 * 0.7
                            : deviceWidth * 0.8 * 0.4,
                        enableFilter: true,
                        enableSearch: true,
                        hintText: AppStrings.allDistrics,
                        dropdownMenuEntries: const [],
                      ),
                      DropdownMenu(
                        trailingIcon: Icon(
                          Icons.unfold_more_rounded,
                          color: AppColors.darkGrey.withOpacity(0.9),
                        ),
                        width: Responsive.isMobile(context)
                            ? deviceWidth * 0.8 * 0.7
                            : deviceWidth * 0.8 * 0.4,
                        enableFilter: true,
                        enableSearch: true,
                        hintText: AppStrings.allTowns,
                        dropdownMenuEntries: const [],
                      ),
                      DropdownMenu(
                        trailingIcon: Icon(
                          Icons.unfold_more_rounded,
                          color: AppColors.darkGrey.withOpacity(0.9),
                        ),
                        width: Responsive.isMobile(context)
                            ? deviceWidth * 0.8 * 0.7
                            : deviceWidth * 0.8 * 0.4,
                        enableFilter: true,
                        enableSearch: true,
                        hintText: AppStrings.allPincodes,
                        dropdownMenuEntries: const [],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SortingHeaderText extends StatelessWidget {
  const SortingHeaderText({
    super.key,
    required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: AppColors.primaryTextColor,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
    );
  }
}
