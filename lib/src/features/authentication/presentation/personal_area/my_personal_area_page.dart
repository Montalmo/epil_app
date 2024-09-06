import 'package:epil_app/src/constants/gaps.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyPersonalAreaPage extends StatelessWidget {
  const MyPersonalAreaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Кабінет'),
            AppGaps.gapH16,
            ElevatedButton(
                onPressed: () {
                  context.push('/');
                },
                child: const Text('Вийти'))
          ],
        ),
      ),
    );
  }
}
