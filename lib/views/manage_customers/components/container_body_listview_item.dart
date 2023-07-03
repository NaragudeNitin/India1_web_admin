// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../common_widgets/row_item_widget.dart';
import '../../../constants/app_colors.dart';

class ContainerBodyListViewItem extends StatelessWidget {
  const ContainerBodyListViewItem({
    Key? key,
    this.widget,
    required this.name,
    required this.id,
    required this.city,
    required this.pincode,
    required this.date,
    required this.days,
    this.titleColor,
    this.subTitleColor,
    required this.index,
    this.icon,
    this.onTap,
  }) : super(key: key);

  final Widget? widget;
  final String name;
  final String id;
  final String city;
  final String pincode;
  final String date;
  final String days;
  final Color? titleColor;
  final Color? subTitleColor;
  final int? index;
  final Widget? icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: AppColors.secondaryColor,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  widget ??
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 14,
                                          width: 14,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColors.teal100,
                                            border: Border.all(
                                                color: AppColors.teal,
                                                width: 2),
                                          ),
                                        ),
                                      ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  RowItemWidget(
                                    title: name,
                                    subtitle: id,
                                    titleColor: titleColor,
                                    subTitleColor: subTitleColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          RowItemWidget(
                            title: city,
                            subtitle: pincode,
                            titleColor: titleColor,
                            subTitleColor: subTitleColor,
                          ),
                          RowItemWidget(
                            title: date,
                            subtitle: days,
                            titleColor: titleColor,
                            subTitleColor: subTitleColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: icon ??
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.lightBlue,
                        ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
