import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/gaps.dart';
import '../constants/theme_variables.dart';

class AppSQIconButton extends StatelessWidget {
  const AppSQIconButton(
      {super.key,
      required this.lable,
      required this.iconPath,
      required this.onPress});

  final String lable;
  final String iconPath;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Material(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: InkWell(
                onTap: () {
                  log('It is pressed $lable');
                },
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Container(
                  height: 72,
                  width: 72,
                  decoration: BoxDecoration(
                    color: AppColors.cWhite,
                    borderRadius: BorderRadius.circular(14.0),
                    border: Border.all(color: AppColors.cBlue100),
                  ),
                  child: SvgPicture.asset(
                    iconPath,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
          ],
        ),
        AppGaps.gapH4,
        Text(
          lable,
          style: AppFontsStyle.cSemibold12.copyWith(
            color: AppColors.cBlue900,
          ),
        ),
      ],
    );
  }
}
