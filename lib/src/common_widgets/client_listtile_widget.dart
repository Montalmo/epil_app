import 'package:epil_app/src/common_widgets/client_icon_statistic_item_widget.dart';
import 'package:epil_app/src/common_widgets/vlient_statistic_widget.dart';
import 'package:epil_app/src/constants/gaps.dart';
import 'package:epil_app/src/constants/theme_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class ClientListTileWidget extends StatelessWidget {
  final String pathAvatar;
  final String firstName;
  final String secondName;

  final String countVisits;

  final String spendMoney;
  final String pathRoute;

  const ClientListTileWidget({
    super.key,
    this.pathAvatar = 'assets/images/default_avatar_pic.png',
    required this.firstName,
    required this.secondName,
    required this.countVisits,
    required this.spendMoney,
    required this.pathRoute,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 41,
                backgroundColor: AppColors.cBlue100,
                child: CircleAvatar(
                  radius: 40,
                  child: Image.asset(
                    pathAvatar,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              AppGaps.gapW12,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$secondName $firstName',
                    style: AppFontsStyle.cSemibold18
                        .copyWith(color: AppColors.cBlue900),
                  ),
                  AppGaps.gapH4,
                  ClientStatisticWidget(
                    visitStatistic: ClientIconStatisticItemWidget(
                        iconPath: 'assets/svgs/visits_icon.svg',
                        statisticValue: countVisits),
                    moneyStatistic: ClientIconStatisticItemWidget(
                        iconPath: 'assets/svgs/coin_icon.svg',
                        statisticValue: spendMoney),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              context.push(pathRoute);
            },
            icon: SvgPicture.asset(
              'assets/svgs/right_arrow_icon.svg',
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),
    );
  }
}
