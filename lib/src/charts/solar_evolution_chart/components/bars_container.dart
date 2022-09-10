import 'package:absolar/src/config/calculos.dart';
import 'package:flutter/material.dart';
import 'bar.dart';

class BarsContainer extends StatelessWidget {
  final int numberOfBars;
  final double barWidth;
  final double containerWidth;
  final int maxAxisValue;
  final List solarEvolutionData;

  BarsContainer(
      {Key? key,
      this.numberOfBars = 11,
      this.barWidth = 33,
      required this.containerWidth,
      required this.solarEvolutionData,
      required this.maxAxisValue})
      : super(key: key);

  double _calculateSpaceBetweenBars() {
    return (containerWidth - (numberOfBars * barWidth)) / (numberOfBars - 1);
  }

  double _conversaoDeValores(double value) {
    print(value);
    print((value * 350) / maxAxisValue);
    return ((value * 350) / maxAxisValue);
  }

  final Calculos calculo = Calculos();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: containerWidth,
      height: 350,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Bar(
              maxAxisValue: maxAxisValue,
              barHeight: _conversaoDeValores(solarEvolutionData[index].total),
              barWidth: barWidth,
              totalValue: solarEvolutionData[index].total.toString(),
            );
          },
          separatorBuilder: (_, index) {
            return SizedBox(
              width: _calculateSpaceBetweenBars(),
            );
          },
          itemCount: numberOfBars),
    );
  }
}
