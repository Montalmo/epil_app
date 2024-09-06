import 'package:epil_app/src/constants/theme_variables.dart';
import 'package:epil_app/src/routing/app_router.dart';
import 'package:flutter/material.dart';

import 'package:epil_app/src/constants/theme_data.dart';

class EpilApp extends StatelessWidget {
  const EpilApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Gilroy',
        scaffoldBackgroundColor: AppColors.cWhite,
        colorSchemeSeed: AppColors.cBlue500,
        inputDecorationTheme: AppInputTheme().theme(),
        elevatedButtonTheme: AppElevaitedButtonTheme().theme(),
        navigationBarTheme: AppNavigationBarTheme().theme(),
      ),
      routerConfig: routes,
    );
  }
}
