import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:india1_web_ui/responsive.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_images.dart';

class ManageCustoDashboardHeader extends StatelessWidget {
  const ManageCustoDashboardHeader({
    super.key,
    required this.value,
  });

  final value;

  @override
  Widget build(BuildContext context) {
    if (Responsive.isTablet(context)) {
      return Row(
        children: [
          IconButton(
            onPressed: () {
             
              Scaffold.maybeOf(context)!.openDrawer();
              // if (Scaffold.of(context).hasDrawer) {
              //   Scaffold.of(context).closeDrawer();
              // }
       
            },
            icon: const Icon(Icons.menu),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              //to do searching
              const SnackBar(
                content: Text(
                  'You have tapped on notification ',
                  style: TextStyle(color: AppColors.darkGrey),
                ),
              );
            },
            child: SvgPicture.asset(
              AppImages.searchIcon,
              color: AppColors.darkGrey,
              height: 25,
              width: 25,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              log('You have tapped on notification');
              const SnackBar(content: Text('You have tapped on notification '));
            },
            child: SvgPicture.asset(
              AppImages.notifiIcon,
              color: AppColors.darkGrey,
              height: 30,
              width: 30,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.person_3,
            color: AppColors.darkGrey,
            size: 30,
          )
        ],
      );
    } else if(Responsive.isMobile(context)){
      return Row(
        children: [
          IconButton(
            onPressed: () {
             
              Scaffold.maybeOf(context)!.openDrawer();
              // if (Scaffold.of(context).hasDrawer) {
              //   Scaffold.of(context).closeDrawer();
              // }
       
            },
            icon: const Icon(Icons.menu),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              //to do searching
              const SnackBar(
                content: Text(
                  'You have tapped on notification ',
                  style: TextStyle(color: AppColors.darkGrey),
                ),
              );
            },
            child: SvgPicture.asset(
              AppImages.searchIcon,
              color: AppColors.darkGrey,
              height: 25,
              width: 25,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              log('You have tapped on notification');
              const SnackBar(content: Text('You have tapped on notification '));
            },
            child: SvgPicture.asset(
              AppImages.notifiIcon,
              color: AppColors.darkGrey,
              height: 30,
              width: 30,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.person_3,
            color: AppColors.darkGrey,
            size: 30,
          )
        ],
      );
    }
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Wrap(
            runSpacing: 10,
            spacing: 10,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: [
              AllStatesDropDownMenu(value: value),
              AllDistrictsDropDownMenu(value: value),
              AllTownsDropDownMenu(value: value),
              AllPinCodeDropDownMenuButton(value: value),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            //to do searching
            const SnackBar(
              content: Text(
                'You have tapped on notification ',
                style: TextStyle(color: AppColors.darkGrey),
              ),
            );
          },
          child: SvgPicture.asset(
            AppImages.searchIcon,
            color: AppColors.darkGrey,
            height: 25,
            width: 25,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {
            log('You have tapped on notification');
            const SnackBar(content: Text('You have tapped on notification '));
          },
          child: SvgPicture.asset(
            AppImages.notifiIcon,
            color: AppColors.darkGrey,
            height: 30,
            width: 30,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Icon(
          Icons.person_3,
          color: AppColors.darkGrey,
          size: 30,
        )
      ],
    );
  }
}

class AllStatesDropDownMenu extends StatelessWidget {
  const AllStatesDropDownMenu({
    super.key,
    required this.value,
  });

  final value;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      trailingIcon: const Icon(Icons.unfold_more_rounded, color: AppColors.darkGrey,),
      menuHeight: 200,
      // width: MediaQuery.of(context).size.width/8,
      dropdownMenuEntries: [
        DropdownMenuEntry(value: value, label: 'panjab'),
        DropdownMenuEntry(value: value, label: 'maharastra'),
        DropdownMenuEntry(value: value, label: 'Delhi'),
      ],
      hintText: 'All states',
      selectedTrailingIcon: const Icon(Icons.unfold_more_sharp),
    );
  }
}

class AllDistrictsDropDownMenu extends StatelessWidget {
  const AllDistrictsDropDownMenu({
    super.key,
    required this.value,
  });

  final value;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      trailingIcon: const Icon(Icons.unfold_more_rounded),
      menuHeight: 200,
      // width: MediaQuery.of(context).size.width/8,
      dropdownMenuEntries: [
        DropdownMenuEntry(value: value, label: 'Latur'),
        DropdownMenuEntry(value: value, label: 'Navi Mumbai'),
        DropdownMenuEntry(value: value, label: 'Pune'),
      ],
      hintText: 'All districts',
      selectedTrailingIcon: const Icon(Icons.unfold_more_sharp),
    );
  }
}

class AllTownsDropDownMenu extends StatelessWidget {
  const AllTownsDropDownMenu({
    super.key,
    required this.value,
  });

  final value;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      trailingIcon: const Icon(Icons.unfold_more_rounded),
      menuHeight: 200,
      // width: MediaQuery.of(context).size.width/8,
      dropdownMenuEntries: [
        DropdownMenuEntry(value: value, label: 'panjab'),
        DropdownMenuEntry(value: value, label: 'maharastra'),
        DropdownMenuEntry(value: value, label: 'Delhi'),
      ],
      hintText: 'All states',
      selectedTrailingIcon: const Icon(Icons.unfold_more_sharp),
    );
  }
}

class AllPinCodeDropDownMenuButton extends StatelessWidget {
  const AllPinCodeDropDownMenuButton({
    super.key,
    required this.value,
  });

  final value;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      trailingIcon: const Icon(Icons.unfold_more_rounded),
      menuHeight: 200,
      // width: MediaQuery.of(context).size.width/8,
      dropdownMenuEntries: [
        DropdownMenuEntry(value: value, label: 'panjab'),
        DropdownMenuEntry(value: value, label: 'maharastra'),
        DropdownMenuEntry(value: value, label: 'Delhi'),
      ],
      hintText: 'All states',
      selectedTrailingIcon: const Icon(Icons.unfold_more_sharp),
    );
  }
}
