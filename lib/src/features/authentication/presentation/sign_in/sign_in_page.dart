import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:go_router/go_router.dart';

import '../../../../constants/gaps.dart';
import '../../../../constants/theme_variables.dart';
import '../../../../common_widgets/app_sq_icon_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 240,
                color: AppColors.cBlue900,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Вітаємо вас у нашому додатку',
                        style: AppFontsStyle.cSemiBoldl40
                            .copyWith(color: AppColors.cWhite),
                      ),
                      AppGaps.gapH12,
                      Text(
                        'Увійдіть у свій аккаунт',
                        style: AppFontsStyle.cRegular16
                            .copyWith(color: AppColors.cWhite),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -200,
                left: -200,
                child: Container(
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.cWhite.withOpacity(.03)),
                ),
              ),
              Positioned(
                top: -360,
                left: -360,
                child: Container(
                  width: 720,
                  height: 720,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.cWhite.withOpacity(.03)),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Spacer(),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Пошта'),
                    ),
                  ),
                  AppGaps.gapH16,
                  TextFormField(
                    decoration: InputDecoration(
                      label: const Text('Пароль'),
                      suffixIcon: SvgPicture.asset(
                        'assets/svgs/eye_icon.svg',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  AppGaps.gapH4,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Забули пароль?',
                          style: AppFontsStyle.cSemibold16.copyWith(
                            color: AppColors.cGreen500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  AppGaps.gapH4,
                  ElevatedButton(
                      onPressed: () {
                        context.push('/main');
                      },
                      child: const Text('Увійти')),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      children: [
                        const Expanded(
                          child: DottedLine(
                            dashColor: AppColors.cBlue100,
                          ),
                        ),
                        AppGaps.gapW8,
                        Text(
                          'Чи скористайтесть',
                          style: AppFontsStyle.cRegular14
                              .copyWith(color: AppColors.cBlue900),
                        ),
                        AppGaps.gapW8,
                        const Expanded(
                          child: DottedLine(
                            dashColor: AppColors.cBlue100,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppSQIconButton(
                        lable: 'Google',
                        iconPath: 'assets/svgs/googlelogo_icon.svg',
                        onPress: () {},
                      ),
                      AppGaps.gapW32,
                      AppSQIconButton(
                        lable: 'Facebook',
                        iconPath: 'assets/svgs/facebook_icon.svg',
                        onPress: () {},
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ще немає аккаунта?',
                  style: AppFontsStyle.cSemibold16
                      .copyWith(color: AppColors.cBlue900),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Регістрація',
                      style: AppFontsStyle.cSemibold16.copyWith(
                        color: AppColors.cBlue500,
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
