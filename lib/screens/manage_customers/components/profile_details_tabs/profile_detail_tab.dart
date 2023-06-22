import 'package:flutter/material.dart';
import 'package:india1_web_ui/constants/app_colors.dart';
import 'package:india1_web_ui/constants/app_strings.dart';

class ProfileDetailsTab extends StatefulWidget {
  const ProfileDetailsTab({super.key});

  @override
  State<ProfileDetailsTab> createState() => _ProfileDetailsTabState();
}

class _ProfileDetailsTabState extends State<ProfileDetailsTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(24),
        color: AppColors.secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            contentHeader(AppStrings.personalDetails),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 40,
              runSpacing: 30,
              children: [
                detailsText(AppStrings.firstName, AppStrings.advithPatil),
                detailsText(AppStrings.lastName, AppStrings.advithPatil),
                detailsText(AppStrings.mobileNumber, '9767576876'),
                detailsText(AppStrings.alternateNumber, '6889654897'),
                detailsText(AppStrings.emailId, 'djnjds@gmail.com'),
                detailsText(AppStrings.dateOfBirth, '23/23/32'),
                detailsText(AppStrings.gender, 'male'),
                detailsText(AppStrings.maritalStatus, 'Single '),
              ],
            ),
            contentDivider(),
            contentHeader(AppStrings.residentialDetails),
            const SizedBox(
              height: 30,
            ),
            Wrap(
              spacing: 40,
              runSpacing: 30,
              children: [
                SizedBox(
                  width: 100,
                  child: detailsText(AppStrings.addressLine1,
                      'ajdnkansdjk asdn,aw scliud jhd,je dkjhde'),
                ),
                SizedBox(
                  width: 100,
                  child: detailsText(AppStrings.addressLine2,
                      'ajdnkansdjk asdn,aw scliud jhd,je dkjhde'),
                ),
                detailsText(AppStrings.pincode, '234246'),
                detailsText(AppStrings.city, AppStrings.banglore),
                detailsText(AppStrings.state, 'Karnataka'),
              ],
            ),
            contentDivider(),
            contentHeader(AppStrings.occupationDetails),
            const SizedBox(
              height: 30,
            ),
            Wrap(
              spacing: 40,
              runSpacing: 30,
              children: [
                detailsText(AppStrings.employmentType, 'Private'),
                detailsText(AppStrings.occupation, 'Cloth store owner '),
                detailsText(AppStrings.monthlyIncome, '75000'),
                detailsText(AppStrings.panNumber, 'BKwd9879 '),
              ],
            ),
            contentDivider(),
            contentHeader(AppStrings.bankAccounts),
            const SizedBox(
              height: 20,
            ),
            const Text(
              AppStrings.account1,
              style: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 14),
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 40,
              runSpacing: 30,
              children: [
                detailsText(AppStrings.bankName, 'SDJJ BAKN SIJDID'),
                detailsText(AppStrings.accountNumber, 'XXXX XXXX 9870'),
                detailsText(AppStrings.ifscCode, 'BANK 00034234'),
                detailsText(AppStrings.accountType, 'Current Account'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              AppStrings.account2,
              style: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 14),
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 40,
              runSpacing: 30,
              children: [
                detailsText(AppStrings.bankName, 'SDJJ BAKN SIJDID'),
                detailsText(AppStrings.accountNumber, 'XXXX XXXX 9870'),
                detailsText(AppStrings.ifscCode, 'BANK 00034234'),
                detailsText(AppStrings.accountType, 'Current Account'),
              ],
            ),
            contentDivider(),
            contentHeader(AppStrings.upiIdVpa),
            const SizedBox(
              height: 30,
            ),
            Wrap(
              spacing: 40,
              runSpacing: 30,
              children: [
                detailsText(AppStrings.upiId, 'adfasdf@ybl'),
                detailsText(AppStrings.vpaNumber, 'dvsdfgrgr@faw')
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget contentHeader(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: AppColors.primaryTextColor,
        fontWeight: FontWeight.w900,
        fontSize: 16,
      ),
    );
  }

  Column contentDivider() {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Divider(
          color: AppColors.subTitleColor.withOpacity(0.8),
          thickness: 2,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget detailsText(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: AppColors.subTitleColor,
            fontWeight: FontWeight.w800,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          description,
          style: const TextStyle(
            color: AppColors.primaryTextColor,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
