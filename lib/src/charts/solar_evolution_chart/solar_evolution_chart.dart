import 'package:absolar/src/charts/components/box_title.dart';
import 'package:absolar/src/charts/solar_evolution_chart/components/background_lines.dart';
import 'package:absolar/src/charts/solar_evolution_chart/components/bars_container.dart';
import 'package:absolar/src/config/calculos.dart';
import 'package:flutter/material.dart';
import 'package:absolar/src/config/app_data.dart' as appData;
import 'package:google_fonts/google_fonts.dart';

class SolarEvolutionChart extends StatelessWidget {
  final double width;
  final double height;

  SolarEvolutionChart({
    Key? key,
    this.height = 470,
    this.width = 470,
  }) : super(key: key);

  final Calculos calculo = Calculos();

  final List solarEvolutionData = appData.solarEvolutionData;

  int _makeDivisiblebyThousand(double value) {
    int num = value.round();
    while (num % 1000 != 0) {
      num++;
    }
    return num;
  }

  numberOfLinesGenerate(double maxHeightValue) {
    return _makeDivisiblebyThousand(maxHeightValue) / 1000;
  }

  int lines() => numberOfLinesGenerate(solarEvolutionData[10].total) + 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 510,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const BoxTitle(
            title: 'Evolution of the Solar Photovoltaic Energy in Brazil',
            source: 'ANEEL/ABSOLAR, 2022',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Stack(
                      children: [
                        BackgroundLines(
                            containerHeight: height, numberOfLines: lines()),
                        BarsContainer(
                          maxAxisValue: _makeDivisiblebyThousand(
                              solarEvolutionData[10].total),
                          solarEvolutionData: solarEvolutionData,
                          containerWidth: width,
                          containerHeight: height,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
