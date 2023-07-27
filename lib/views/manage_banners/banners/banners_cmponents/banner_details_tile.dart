import 'package:flutter/material.dart';

import '../../../../common_widgets/common_pop_up_alertbox.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_strings.dart';

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
            Expanded(
              flex: 2,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Banner Image',
                  suffixIcon: IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          content: CommonPopUpContainer(
                            popUpHeading: AppStrings.pleaseNote,
                            popUpDescription: AppStrings.fileSizeCanNot,
                            buttonName: AppStrings.ok,
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.file_upload_outlined,
                      color: AppColors.lightBlue,
                    ),
                  ),
                  border: const OutlineInputBorder(),
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
            Expanded(
              child: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => PopUpAlertDialog(
                      popUpHeading: AppStrings.pleaseNote,
                      popUpDescription: AppStrings.onceDeletedLanguageBanner,
                      buttonName: AppStrings.continueToDelete,
                      onPressed: () => Navigator.pop(context),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.delete,
                  color: AppColors.lightBlue,
                ),
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
