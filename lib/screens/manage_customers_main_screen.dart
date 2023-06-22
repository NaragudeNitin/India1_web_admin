import 'package:flutter/material.dart';
import 'package:india1_web_ui/responsive.dart';
import '../common_widgets/side_menu_bar.dart';
import '../controllers/menucontroller.dart';
import 'manage_customers/manage_customers_dashboard.dart';

class ManageCustomersMainScreen extends StatefulWidget {
  const ManageCustomersMainScreen({super.key});

  @override
  State<ManageCustomersMainScreen> createState() =>
      _ManageCustomersMainScreenState();
}

class _ManageCustomersMainScreenState extends State<ManageCustomersMainScreen> {
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
              child: ManageCustomersDashBoard(),
            )
          ],
        ),
      ),
    );
  }
}
