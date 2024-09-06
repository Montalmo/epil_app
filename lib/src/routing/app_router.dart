import 'package:epil_app/src/features/authentication/presentation/sign_in/sign_in_page.dart';
import 'package:epil_app/src/features/main/presentation/main_page.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(routes: [
  GoRoute(
      name: 'Auth page',
      path: '/',
      builder: (context, state) => const SignInPage(),
      routes: [
        GoRoute(
            name: 'My clients page',
            path: 'main',
            builder: (context, state) => const MainPage()),
      ]),
]);
