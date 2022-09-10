import 'package:flutter/material.dart';
import 'package:absolar/src/config/app_data.dart' as appData;

import 'bar.dart';

class BarsContainer extends StatelessWidget {
  final int numberOfBars;
  final double barWidth;
  final double containerWidth;

  BarsContainer({
    Key? key,
    this.numberOfBars = 11,
    this.barWidth = 33,
    required this.containerWidth,
  }) : super(key: key);

  final List solarEvolutionData = appData.solarEvolutionData;

  double _calculateSpace() {
    return (containerWidth - (numberOfBars * barWidth)) / (numberOfBars - 1);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: containerWidth,
      height: 350,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Bar(
              barHeight: (350 / 100 * 100),
              barWidth: barWidth,
            );
          },
          separatorBuilder: (_, index) {
            double newWidth = _calculateSpace();
            return SizedBox(
              width: newWidth,
            );
          },
          itemCount: numberOfBars),
    );
  }
}
