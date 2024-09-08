import 'package:epil_app/src/common_widgets/client_listtile_widget.dart';
import 'package:epil_app/src/constants/gaps.dart';
import 'package:epil_app/src/constants/theme_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyClientsPage extends StatelessWidget {
  const MyClientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Клієнти'),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1.0),
            child: Container(
              color: AppColors.cBlue100,
              height: 1,
            )),
        actions: [
          IconButton(
            onPressed: () {
              //TODO: add action on button
            },
            icon: SvgPicture.asset(
              'assets/svgs/search_icon.svg',
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            ClientListTileWidget(
              pathAvatar: 'assets/images/fake_avatar_pic.png',
              firstName: 'Сюзанна',
              secondName: 'Ортюх',
              countVisits: '2',
              spendMoney: '2k',
              pathRoute: '',
            ),
            ClientListTileWidget(
              firstName: 'Катерина',
              secondName: 'Шапошникова',
              countVisits: '6',
              spendMoney: '2.7k',
              pathRoute: '',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
