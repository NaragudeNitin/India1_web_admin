import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({super.key, required this.mobile, required this.tablet, required this.desktop});
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  static bool isMobile(BuildContext context) =>
    MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
    MediaQuery.of(context).size.width < 1060 && 
    MediaQuery.of(context).size.width >= 600;

  static bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1060;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    
    if (size.width >= 1060) {
      return desktop;
    } else if (size.width >= 600) {
      return tablet;
    } else{
      return mobile;
    }
  }
}