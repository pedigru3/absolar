import 'package:absolar/src/config/calculos.dart';
import 'package:flutter/material.dart';
import 'bar.dart';

class BarsContainer extends StatelessWidget {
  final int numberOfBars;
  final double barWidth;
  final double containerWidth;
  final double containerHeight;
  final int maxAxisValue;
  final List solarEvolutionData;

  BarsContainer(
      {Key? key,
      this.numberOfBars = 11,
      this.barWidth = 33,
      required this.containerWidth,
      required this.containerHeight,
      required this.solarEvolutionData,
      required this.maxAxisValue})
      : super(key: key);

  double _calculateSpaceBetweenBars() {
    return (containerWidth - (numberOfBars * barWidth)) / (numberOfBars - 1);
  }

  double _conversaoDeValores(double value) {
    //trabalha com a porpoção do gráfico para caber na tabela
    return ((value * containerHeight) / maxAxisValue);
  }

  final Calculos calculo = Calculos();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: containerWidth,
      height: containerHeight,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Bar(
              barHeight: _conversaoDeValores(solarEvolutionData[index].total),
              barWidth: barWidth,
              gdBarHeight: _conversaoDeValores(solarEvolutionData[index].gc),
              gcBarHeight: _conversaoDeValores(solarEvolutionData[index].gd),
              totalValue: solarEvolutionData[index].total,
              containerHeight: containerHeight,
              gd: solarEvolutionData[index].gd,
              gc: solarEvolutionData[index].gc,
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
