
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kevell_care/pages/login_scrren/presentation/login_screen.dart';
import 'package:kevell_care/pages/signup_screen/presentation/signup_screen.dart';

class MianRoute {




  final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'signup',
          builder: (BuildContext context, GoRouterState state) {
            return const SignupScreen();
          },
        ),
      ],
    ),
  ],
);
}