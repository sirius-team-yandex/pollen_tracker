import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pollen_tracker/common/router_config.dart';

class AppState {
  static Map<int, String> mapScreen = {
    0: RouteName.calendar,
    1: RouteName.home,
    2: RouteName.profile,
  };
  static ValueNotifier<bool> showNavBar = ValueNotifier(true);
}

class AppScaffold extends StatefulWidget {
  const AppScaffold({super.key, required this.child});

  final Widget child;

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
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
          body: widget.child,
          bottomNavigationBar: !showBar
              ? null
              : BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  onTap: (index) =>
                      context.go(AppState.mapScreen[index] ?? '/home'),
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
