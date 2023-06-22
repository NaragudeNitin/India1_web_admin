import 'package:flutter/material.dart';
import 'package:india1_web_ui/screens/manage_customers/manage_customer_detail_screen.dart';

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
      home:const ManageCustomerDetailsScreen() ,
    );
  }
}

