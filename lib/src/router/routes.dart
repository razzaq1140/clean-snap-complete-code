import 'package:clean_snap/src/features/bottam_bar/bottam_bar.dart';
import 'package:clean_snap/src/router/error_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppRouter {
  static final router = GoRouter(
    initialLocation: '/WelcomeScreen',
    routes: [
      GoRoute(
        name: "WelcomeScreen",
        path: "/WelcomeScreen",
        builder: (context, state) => BottamBarWidget(),
      ),
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: ErrorPage());
    },
  );

  static void clearAndNavigate(BuildContext context, String name) {
    while (context.canPop()) {
      context.pop();
    }
    context.pushReplacementNamed(name);
  }
}

class AppRoute {
  static const String errorpage = 'error-page';
}
