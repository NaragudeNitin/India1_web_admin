import 'package:flutter/material.dart';

import 'heading_text.dart';

class PopUpAlertDialog extends StatelessWidget {
  const PopUpAlertDialog({
    super.key,
    required this.popUpHeading,
    required this.popUpDescription,
    required this.buttonName,
    this.onPressed,
    this.child,
    this.height,
    this.width,
  });
  final String popUpHeading;
  final String popUpDescription;
  final String buttonName;
  final void Function()? onPressed;
  final Widget? child;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      title: Stack(
        children: [
          Container(
            height: height,
            width: width,
            padding: const EdgeInsets.all(20),
            child: child ??
                CommonPopUpContainer(
                  popUpHeading: popUpHeading,
                  popUpDescription: popUpDescription,
                  buttonName: buttonName,
                  onPressed: () => Navigator.pop(context),
                ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: IconButton(
              iconSize: 40,
              color: Colors.blueGrey.shade50,
              icon: const Icon(Icons.cancel),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}

class CommonPopUpContainer extends StatelessWidget {
  const CommonPopUpContainer({
    super.key,
    required this.popUpHeading,
    required this.popUpDescription,
    required this.buttonName,
    this.onPressed,
  });
  final String popUpHeading;
  final String popUpDescription;
  final String buttonName;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          HeadingText(
            headingText: popUpHeading,
            flex: 0,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(
            height: 20,
          ),
          HeadingText(
            headingText: popUpDescription,
            flex: 0,
            fontSize: 14,
          ),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
            style: const ButtonStyle(
              minimumSize: MaterialStatePropertyAll(
                Size(200, 50),
              ),
              padding: MaterialStatePropertyAll(
                EdgeInsets.all(10),
              ),
            ),
            onPressed: onPressed,
            child: Text(buttonName),
          ),
        ],
      ),
    );
  }
}
