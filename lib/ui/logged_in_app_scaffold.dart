import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pollen_tracker/bloc/current_mood_bloc/current_mood_bloc.dart';
import 'package:pollen_tracker/bloc/current_pollen_bloc/current_pollen_bloc.dart';
import 'package:pollen_tracker/bloc/profile_bloc/profile_bloc.dart';
import 'package:pollen_tracker/common/router_config.dart';

import '../injectable_init.dart';

class AppState {
  static Map<int, String> mapScreen = {
    0: RouteName.calendar,
    1: RouteName.home,
    2: RouteName.profile,
  };
  static ValueNotifier<bool> showNavBar = ValueNotifier(true);
}

class LoggedInAppScaffoldWrapper extends StatelessWidget {
  const LoggedInAppScaffoldWrapper({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    // write multiblocprovider with value
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: getIt<ProfileBloc>(),
        ),
        BlocProvider.value(
          value: getIt<CurrentMoodBloc>(),
        ),
        BlocProvider.value(
          value: getIt<CurrentPollenBloc>(),
        ),
      ],
      child: LoggedInAppScaffold(
        child: child,
      ),
    );
  }
}

class LoggedInAppScaffold extends StatefulWidget {
  const LoggedInAppScaffold({super.key, required this.child});

  final Widget child;

  @override
  State<LoggedInAppScaffold> createState() => _LoggedInAppScaffoldState();
}

class _LoggedInAppScaffoldState extends State<LoggedInAppScaffold> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: AppState.showNavBar,
      builder: (context, showBar, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: widget.child,
          bottomNavigationBar: !showBar
              ? null
              : BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  onTap: (index) => context.go(AppState.mapScreen[index] ?? '/home'),
                  items: _createNavigationBarItems(context),
                ),
        );
      },
    );
  }

  List<BottomNavigationBarItem> _createNavigationBarItems(
    BuildContext context,
  ) =>
      [
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            Icons.calendar_month_rounded,
            size: 24,
            color: Theme.of(context).primaryColor,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            Icons.home_rounded,
            size: 24,
            color: Theme.of(context).primaryColor,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            Icons.person,
            size: 24,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ];
}
