import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pollen_tracker/ui/app_scaffold.dart';
import 'package:pollen_tracker/ui/features/calendar/calendar_page.dart';
import 'package:pollen_tracker/ui/features/home/home_page.dart';
import 'package:pollen_tracker/ui/features/introduction/welcome_page.dart';
import 'package:pollen_tracker/ui/features/profile/profile_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();

abstract class RouteName {
  static const String root = '/';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String calendar = '/calendar';
  static const String welcome = '/welcome';
}

final routerConfig = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: RouteName.welcome,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return AppScaffold(child: child);
      },
      routes: <RouteBase>[
        GoRoute(
          path: RouteName.calendar,
          builder: (BuildContext context, GoRouterState state) {
            return const CalendarPage();
          },
        ),
        GoRoute(
          path: RouteName.home,
          builder: (BuildContext context, GoRouterState state) {
            return const HomePage();
          },
        ),
        GoRoute(
          path: RouteName.profile,
          builder: (BuildContext context, GoRouterState state) {
            return const ProfilePage();
          },
        ),
      ],
    ),
    GoRoute(
      path: RouteName.welcome,
      builder: (context, state) => const WelcomePage(),
    ),
  ],
);
