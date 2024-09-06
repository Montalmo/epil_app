import 'package:epil_app/src/constants/theme_variables.dart';
import 'package:epil_app/src/features/authentication/presentation/personal_area/my_personal_area_page.dart';
import 'package:epil_app/src/features/calendar/presentation/my_calendar_page.dart';
import 'package:epil_app/src/features/main/data/main_current_page_provider.dart';
import 'package:epil_app/src/features/messages/presentation/my_events_page.dart';
import 'package:epil_app/src/features/my_clients/presentation/my_clients_page.dart';
import 'package:epil_app/src/features/wallet/presentation/my_wallet_pagw.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPageIndex = ref.watch(mainCurrentPageProvider);

    return Scaffold(
      body: [
        const MyClientsPage(),
        const MyWalletPage(),
        const MyCalendarPage(),
        const MyEventsPage(),
        const MyPersonalAreaPage()
      ][currentPageIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: AppColors.cBlue100)),
        ),
        child: NavigationBar(
          selectedIndex: currentPageIndex,
          onDestinationSelected: (value) {
            ref.read(mainCurrentPageProvider.notifier).state = value;
          },
          destinations: [
            NavigationDestination(
                selectedIcon: SvgPicture.asset(
                  'assets/svgs/client_avatar_selected_icon.svg',
                  fit: BoxFit.scaleDown,
                ),
                icon: SvgPicture.asset(
                  'assets/svgs/client_avatar_icon.svg',
                  fit: BoxFit.scaleDown,
                  theme: const SvgTheme(currentColor: AppColors.cBlue500),
                ),
                label: 'Клієнти'),
            NavigationDestination(
                selectedIcon: SvgPicture.asset(
                  'assets/svgs/wallet_selected_icon.svg',
                  fit: BoxFit.scaleDown,
                ),
                icon: SvgPicture.asset(
                  'assets/svgs/wallet_icon.svg',
                  fit: BoxFit.scaleDown,
                ),
                label: 'Гаманець'),
            NavigationDestination(
                selectedIcon: SvgPicture.asset(
                  'assets/svgs/calendar_selected_icon.svg',
                  fit: BoxFit.scaleDown,
                ),
                icon: SvgPicture.asset(
                  'assets/svgs/calendar_icon.svg',
                  fit: BoxFit.scaleDown,
                ),
                label: 'Календар'),
            NavigationDestination(
                selectedIcon: SvgPicture.asset(
                  'assets/svgs/bell_selected_icon.svg',
                  fit: BoxFit.scaleDown,
                ),
                icon: SvgPicture.asset(
                  'assets/svgs/bell_icon.svg',
                  fit: BoxFit.scaleDown,
                ),
                label: 'Події'),
            NavigationDestination(
                selectedIcon: SvgPicture.asset(
                  'assets/svgs/target_selected_icon.svg',
                  fit: BoxFit.scaleDown,
                ),
                icon: SvgPicture.asset(
                  'assets/svgs/target_icon.svg',
                  fit: BoxFit.scaleDown,
                ),
                label: 'Кабінет'),
          ],
        ),
      ),
    );
  }
}
