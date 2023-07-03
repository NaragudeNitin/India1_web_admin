import 'package:flutter/material.dart';

import '../../../../common_widgets/heading_text.dart';
import '../../../../constants/app_colors.dart';

class NotificationTypeTile extends StatelessWidget {
  const NotificationTypeTile({
    super.key,
    required this.onPressed,
    required this.notificationType,
    required this.subject,
    required this.description,
  });
  final void Function() onPressed;
  final String notificationType;
  final String subject;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 6,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    HeadingText(
                        headingText: notificationType,
                        flex: 0,
                        color: AppColors.primaryTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                    const SizedBox(
                      height: 10,
                    ),
                    HeadingText(
                        headingText: '$subject : $description',
                        flex: 0,
                        color: AppColors.subTitleColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: onPressed,
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.lightBlue,
                ),
              ),
            ),
          ],
        ),
        Divider(
          color: AppColors.darkGrey.withOpacity(0.5),
        ),
      ],
    );
  }
}
