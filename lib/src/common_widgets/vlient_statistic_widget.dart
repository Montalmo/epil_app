import 'package:flutter/material.dart';

import 'package:epil_app/src/constants/gaps.dart';
import 'package:epil_app/src/common_widgets/client_icon_statistic_item_widget.dart';

class ClientStatisticWidget extends StatelessWidget {
  final ClientIconStatisticItemWidget visitStatistic;
  final ClientIconStatisticItemWidget moneyStatistic;

  const ClientStatisticWidget({
    super.key,
    required this.visitStatistic,
    required this.moneyStatistic,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClientIconStatisticItemWidget(
          iconPath: visitStatistic.iconPath,
          statisticValue: visitStatistic.statisticValue,
        ),
        AppGaps.gapW8,
        ClientIconStatisticItemWidget(
          iconPath: moneyStatistic.iconPath,
          statisticValue: moneyStatistic.statisticValue,
        )
      ],
    );
  }
}