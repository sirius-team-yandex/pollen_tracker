import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/main.dart';
import 'package:pollen_tracker/ui/features/select_profile/select_profile.dart';
import 'package:pollen_tracker/ui/logged_in_app_scaffold.dart';
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
  static const String selectProfile = '/selectProfile';

  static const String notFirstLaunchRedirect = '/notFirstLaunchRedirect';

  static const String rootRedirect = '/rootRedirect';
}

final routerConfig = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: RouteName.rootRedirect,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return LoggedInAppScaffoldWrapper(child: child);
      },
      routes: <RouteBase>[
        GoRoute(
          path: RouteName.calendar,
          builder: (BuildContext context, GoRouterState state) {
            return const CalendarPageWrapper();
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
            return const ProfilePageWrapper();
          },
        ),
      ],
    ),
    GoRoute(
      path: RouteName.welcome,
      builder: (context, state) => const WelcomePage(),
    ),
    GoRoute(
      path: RouteName.selectProfile,
      builder: (context, state) => const SelectProfileWrapper(),
    ),
    GoRoute(
      path: RouteName.rootRedirect,
      redirect: (context, state) {
        final config = ConfigInherited.of(context).configEntity;
        logger.e(config);
        if (config?.isFirstLaunch ?? true) {
          logger.d('redirected to ${RouteName.welcome}');

          return RouteName.welcome;
        } else {
          logger.d('redirected to ${RouteName.notFirstLaunchRedirect}');

          return RouteName.notFirstLaunchRedirect;
        }
      },
    ),
    GoRoute(
      path: RouteName.notFirstLaunchRedirect,
      redirect: (context, state) {
        final config = ConfigInherited.of(context).configEntity;
        if (config?.currProfileId == null) {
          logger.d('redirected to ${RouteName.selectProfile}');

          return RouteName.selectProfile;
        }
        logger.d('redirected to ${RouteName.home}');

        return RouteName.home;
      },
    ),
  ],
);
