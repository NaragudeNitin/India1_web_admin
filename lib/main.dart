import 'package:flutter/material.dart';
import 'package:india1_web_ui/views/manage_banners/banners/edit_banner_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const ManageCustomersMainScreen(),
      home: const EditBannerScreen(),
      // home: const AddNotificationPage(),
    );
  }
}
