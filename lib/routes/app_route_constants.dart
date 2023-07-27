import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:india1_web_ui/routes/app_routes_confi.dart';
import 'package:india1_web_ui/views/manage_banners/banner_screen.dart';
import 'package:india1_web_ui/views/manage_customers/manage_customer_detail_screen.dart';
import 'package:india1_web_ui/views/manage_customers/manage_customers_main_screen.dart';

import '../views/error_page/error_page.dart';
import '../views/manage_notifications/notifications_screen.dart';

class AppRoutes {
  // static final GoRouter routes = GoRouter(
  //   routes: <GoRoute>[
  //     GoRoute(
  //       name: AppRouteConstants.manageCustomers,
  //       path: '/',
  //       pageBuilder: (context, state) => const MaterialPage(
  //         child: ManageCustomersMainScreen(),
  //       ),
  //     ),
  //     GoRoute(
  //       name: AppRouteConstants.customerDetails,
  //       path: '/customer_details',
  //       pageBuilder: (context, state) => const MaterialPage(
  //         child: ManageCustomerDetailsScreen(),
  //       ),
  //     ),
  //     GoRoute(
  //       name: AppRouteConstants.notifications,
  //       path: '/notifications',
  //       pageBuilder: (context, state) => const MaterialPage(
  //         child: NotificationsScreen(),
  //       ),
  //     ),
  //     GoRoute(
  //       name: AppRouteConstants.banners,
  //       path: '/banners',
  //       pageBuilder: (context, state) => const MaterialPage(
  //         child: BannerScreen(),
  //       ),
  //     ),
  //   ],
  //   errorPageBuilder: (context, state) {
  //     return const MaterialPage(
  //       child: ErrorPage(),
  //     );
  //   },
  // );
  static GoRouter returnRouter(bool isAuth) {
    GoRouter routes = GoRouter(
      routes: <GoRoute>[
        GoRoute(
          name: AppRouteConstants.manageCustomers,
          path: '/',
          pageBuilder: (context, state) => const MaterialPage(
            child: ManageCustomersMainScreen(),
          ),
        ),
        GoRoute(
          name: AppRouteConstants.customerDetails,
          path: '/customer_details',
          pageBuilder: (context, state) => const MaterialPage(
            child: ManageCustomerDetailsScreen(),
          ),
        ),
        GoRoute(
          name: AppRouteConstants.notifications,
          path: '/notifications',
          pageBuilder: (context, state) => const MaterialPage(
            child: NotificationsScreen(),
          ),
        ),
        GoRoute(
          name: AppRouteConstants.banners,
          path: '/banners',
          pageBuilder: (context, state) => const MaterialPage(
            child: BannerScreen(),
          ),
        ),
      ],
      errorPageBuilder: (context, state) {
        return const MaterialPage(
          child: ErrorPage(),
        );
      },
    );
    return routes;
  }
}
