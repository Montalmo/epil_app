import 'package:flutter/material.dart';

import 'features/authentication/sign_in/sign_in_page.dart';

class EpilApp extends StatelessWidget {
  const EpilApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}
