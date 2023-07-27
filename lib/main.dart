import 'package:flutter/material.dart';
import 'package:india1_web_ui/routes/app_route_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp.router(
    //   debugShowCheckedModeBanner: false,
    //   // routeInformationParser:
    //   //     AppRoutes.returnRouter(false).routeInformationParser,
    //   // routerDelegate: AppRoutes.returnRouter(false).routerDelegate,
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   routerConfig: AppRoutes.returnRouter(true),
    // );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // home: const ManageCustomersMainScreen(),
      // home: const EditBannerScreen(),
      // home: const AddNotificationPage(),
    );
  }
}



///things to handle
///1. after refreshing app should be in same page
///2. provide the urls for navigation ----> navigation part is done but url is not working look into that
///top app bar should be stable
///side appbar should be stable
