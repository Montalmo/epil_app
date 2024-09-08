import 'package:epil_app/src/constants/gaps.dart';
import 'package:epil_app/src/constants/theme_variables.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClientIconStatisticItemWidget extends StatelessWidget {
  final String iconPath;
  final String statisticValue;

  const ClientIconStatisticItemWidget({
    super.key,
    required this.iconPath,
    required this.statisticValue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          iconPath,
          fit: BoxFit.scaleDown,
        ),
        AppGaps.gapW4,
        Text(
          statisticValue,
          style: AppFontsStyle.cSemibold14.copyWith(
            color: AppColors.cBlue700,
          ),
        )
      ],
    );
  }
}