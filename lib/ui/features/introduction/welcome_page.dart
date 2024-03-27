import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: <Widget>[
              // Your pages go here:
              _SubPageView(
                assetSvgName: 'doctor_and_patien',
                description: context.S.welcome_description_1,
              ),
              _SubPageView(
                assetSvgName: 'woman_with_allergen',
                description: context.S.welcome_description_2,
              ),
              // TODO:
              Center(
                child: TextButton(
                  onPressed: () => context.go('/home'),
                  child: Text(
                    'please move me to home',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 24.0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: List<Widget>.generate(3, (int index) {
                return GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: 20,
                    width: _currentPage == index ? 30 : 20,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: _currentPage == index ? context.myColors.darkGreen : context.myColors.primaryGreen,
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class _SubPageView extends StatelessWidget {
  const _SubPageView({required this.assetSvgName, required this.description});
  final String description;
  final String assetSvgName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/svg/$assetSvgName.svg',
            semanticsLabel: assetSvgName,
          ),
          Text(description, style: Theme.of(context).textTheme.displayMedium),
        ],
      ),
    );
  }
}
