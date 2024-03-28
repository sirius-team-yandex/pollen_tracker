import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/enums/risc_enum.dart';
import 'package:pollen_tracker/ui/models/forecast_vo.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';

class ForecastView extends StatelessWidget {
  const ForecastView({required this.vos, super.key});

  final List<ForecastVo> vos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: vos.length,
      itemBuilder: (context, index) {
        final item = vos[index];
        final double percent;
        switch (item.level) {
          case RiscLevel.low:
            percent = 0.25;
            break;
          case RiscLevel.moderate:
            percent = 0.5;
            break;
          case RiscLevel.high:
            percent = 0.75;
            break;
          case RiscLevel.veryHigh:
            percent = 1;
            break;
          default:
            percent = 0.25;
        }

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: ColoredColumn(
            percent: percent,
            caption: '${item.time.hour}:${item.time.minute}',
          ),
        );
      },
    );
  }
}

class ColoredColumn extends StatelessWidget {
  const ColoredColumn({
    required this.percent,
    required this.caption,
    super.key,
  });

  static const width = 48.0;
  static const height = 40 * 4.5;

  final double percent;
  final String caption;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Text(
            caption,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(width / 2),
          child: SizedBox(
            width: width,
            height: height,
            child: ColoredBox(
              color: context.myColors.primaryGreen,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(width / 2),
                  child: SizedBox(
                    width: width,
                    height: height * percent,
                    child: ColoredBox(
                      color: _calculateColor(percent),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Color _calculateColor(double percent) {
    if (percent <= 0.25) {
      return MyColors.greenForecast;
    } else if (percent < 0.75) {
      return MyColors.yellowForecast;
    } else {
      return MyColors.redForecast;
    }
  }
}
