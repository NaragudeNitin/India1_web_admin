import 'package:flutter/material.dart';
import 'package:india1_web_ui/constants/app_colors.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;

  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      textColor: AppColors.deepPurple,
      child: ListTile(
        onTap: onTap,
        horizontalTitleGap: 0.0,
        title: Text(
          title,
          style: const TextStyle(fontSize: 16, color: Color(0x89000000), fontWeight: FontWeight.w500),
        ),
        selectedColor: AppColors.deepPurple,
        hoverColor: Colors.grey.shade200,
        trailing: const Icon(Icons.arrow_forward_ios, color: AppColors.darkGrey,size: 16,),
      ),
    );
  }
}
