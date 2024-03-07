import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/app/core/routes/route_constants.dart';
import 'package:flutter_boilerplate/app/presentation/error/error404.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/about/pages/about.dart';
import '../../presentation/home/pages/home.dart';

class AppRouter {
  final GoRouter _router = GoRouter(
    initialLocation: '/home',
    routes: <RouteBase>[
      GoRoute(
        name: AppRouteConstants.homeRouteName,
        path: '/home',
        builder: (context, state) {
          return const HomePage();
        },
      ),
      GoRoute(
        name: AppRouteConstants.aboutRouteName,
        path: '/about',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const AboutPage(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          );
        },
      ),
    ],
    errorPageBuilder: (context, state) {
      return CustomTransitionPage(
        child: const Error404(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurveTween(
              curve: Curves.easeInOut,
            ).animate(animation),
            child: child,
          );
        },
      );
    },
  );

  GoRouter get router => _router;
}
