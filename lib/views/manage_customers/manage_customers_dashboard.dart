// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:india1_web_ui/constants/app_strings.dart';
import '../../constants/app_colors.dart';
import '../../routes/app_routes_confi.dart';
import 'components/container_body_listview_item.dart';
import 'components/dashboard_container_header.dart';
import 'components/manage_customer_dashboard_header.dart';

class ManageCustomersDashBoard extends StatelessWidget {
  const ManageCustomersDashBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var value;
    return Container(
      // color: Colors.black,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ManageCustoDashboardHeader(value: value),
          const SizedBox(
            height: 24,
          ),
          const BackButton(),
          const DashBoardContainerHeader(),
          const ContainerBodyListViewItem(
            widget: Text(''),
            city: AppStrings.pincodeCity,
            date: AppStrings.registerdOn,
            days: '',
            id: '',
            name: AppStrings.nameId,
            pincode: '',
            index: -1,
            titleColor: AppColors.darkGrey,
            icon: Text(''),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) => ContainerBodyListViewItem(
                  onTap: () {
                    GoRouter.of(context)
                        .pushNamed(AppRouteConstants.customerDetails);
                  },
                  name: AppStrings.advithPatil,
                  id: AppStrings.id23900,
                  city: AppStrings.banglore,
                  pincode: AppStrings.p521120,
                  date: AppStrings.date5,
                  days: AppStrings.days2,
                  index: index),
            ),
          ),
          Center(
            child: Text('${MediaQuery.of(context).size.width}'),
          ),
        ],
      ),
    );
  }
}
