import 'package:flutter/material.dart';

import '../../common_widgets/side_menu_bar.dart';
import '../../controllers/menucontroller.dart';
import '../../responsive.dart';
import 'banners/banners_cmponents/banner_dashbpard.dart';

class BannerScreen extends StatefulWidget {
  const BannerScreen({super.key});

  @override
  State<BannerScreen> createState() => _BannerScreenState();
}

class _BannerScreenState extends State<BannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: MenuAppController().scaffoldKey,
      drawer: const SideBarMenu(),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                flex: 2,
                child: SideBarMenu(),
              ),
            const Expanded(
              flex: 7,
              child: BannerDashBoard(),
            )
          ],
        ),
      ),
    );
  }
}
