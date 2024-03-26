// ignore_for_file: deprecated_member_use

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';
import 'package:pollen_tracker/common/gen/localization/app_localizations.dart';
import 'package:pollen_tracker/ui/dialogs/mood_set_record_dialog.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:pollen_tracker/ui/widgets/city_location_widget.dart';
import 'package:pollen_tracker/ui/widgets/custom_circle_status_painter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CityLocationWidget(location: 'Sirius, Russia'),
                const SizedBox(height: 32.0),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    const RotatingSVGWidget(
                      svgName: 'virus-svgrepo-com-2',
                    ),
                    SvgPicture.asset(
                      height: 80,
                      width: 80,
                      'assets/images/svg/pollen_bad_status_emoji.svg',
                      color: context.myColors.primary,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                const SizedBox(height: 32.0),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.0),
                    color: context.myColors.primaryGreen,
                  ),
                  child: TextButton(
                    onPressed: () async {
                      await showDialog<void>(
                        context: context,
                        builder: (BuildContext context) => const MoodSetRecordDialog(),
                      );
                    },
                    child: Text(
                      AppLocalizations.of(context).how_are_you_feeling,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
                Text(
                  AppLocalizations.of(context).atmospheric_pollution,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                        color: context.myColors.primaryGreen,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 60,
                                height: 60,
                                child: CustomPaint(
                                  painter: CustomCircleStatusPainter(
                                    MyColors.greenForecast,
                                    MyColors.redForecast,
                                    MoodType.bad,
                                  ),
                                  child: Container(),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text('75 %',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium
                                      ?.copyWith(color: MyColors.redForecast, fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Text('Состояние воздуха: \n Неблагоприятное',
                              style: Theme.of(context).textTheme.displayMedium),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32.0),
                            color: context.myColors.primaryGreen,
                          ),
                          child: Text('Тимофеевка', style: Theme.of(context).textTheme.displayMedium),
                        ),
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32.0),
                            color: context.myColors.primaryGreen,
                          ),
                          child: Text('Тимофеевка', style: Theme.of(context).textTheme.displayMedium),
                        ),
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32.0),
                            color: context.myColors.primaryGreen,
                          ),
                          child: Text('Тимофеевка', style: Theme.of(context).textTheme.displayMedium),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RotatingSVGWidget extends StatefulWidget {
  final String svgName;

  const RotatingSVGWidget({super.key, required this.svgName});
  @override
  // ignore: library_private_types_in_public_api
  _RotatingSVGWidgetState createState() => _RotatingSVGWidgetState();
}

class _RotatingSVGWidgetState extends State<RotatingSVGWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat(); // This will repeat the animation indefinitely
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * pi,
          child: SizedBox(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  height: 20,
                  width: 20,
                  'assets/images/svg/${widget.svgName}.svg',
                  color: Colors.green,
                ),
                SvgPicture.asset(height: 20, width: 20, 'assets/images/svg/${widget.svgName}.svg', color: Colors.green),
              ],
            ),
          ),
        );
      },
    );
  }
}
