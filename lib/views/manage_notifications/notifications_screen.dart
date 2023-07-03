import 'package:flutter/material.dart';

import '../../common_widgets/side_menu_bar.dart';
import '../../controllers/menucontroller.dart';
import '../../responsive.dart';
import 'notifications/notification_components/notifications_dashboard.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
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
              child: NotificationsDashBoard(),
            )
          ],
        ),
      ),
    );
  }
}
