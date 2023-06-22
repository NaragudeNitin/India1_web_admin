import 'package:flutter/material.dart';
import 'package:india1_web_ui/responsive.dart';
import 'package:india1_web_ui/screens/manage_customers/manage_customer_details.dart';

import '../../common_widgets/side_menu_bar.dart';
import '../../controllers/menucontroller.dart';

class ManageCustomerDetailsScreen extends StatefulWidget {
  const ManageCustomerDetailsScreen({super.key});

  @override
  State<ManageCustomerDetailsScreen> createState() =>
      _ManageCustomerDetailsScreenState();
}

class _ManageCustomerDetailsScreenState extends State<ManageCustomerDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: MenuAppController().scaffoldKey,
      drawer: const SideBarMenu(),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            if(Responsive.isDesktop(context))
            const Expanded(
              flex: 2,
              child: SideBarMenu(),
            ),
            const Expanded(
              flex: 7,
              child: ManageCustomersDetails(),
            )
          ],
        ),
      ),
    );
  }
}
