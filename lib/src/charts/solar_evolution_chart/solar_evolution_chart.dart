import 'package:absolar/src/charts/components/box_title.dart';
import 'package:absolar/src/charts/solar_evolution_chart/components/background_lines.dart';
import 'package:absolar/src/charts/solar_evolution_chart/components/bars_container.dart';
import 'package:flutter/material.dart';
import 'package:absolar/src/config/app_data.dart' as appData;

class SolarEvolutionChart extends StatelessWidget {
  SolarEvolutionChart({Key? key}) : super(key: key);

  final double width = 470;
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const BoxTitle(
                    title:
                        'Evolution of the Solar Photovoltaic Energy in Brazil',
                    source: 'ANEEL/ABSOLAR, 2022',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Stack(
                      children: [
                        BackgroundLines(
                            numberOfLines: numberOfLinesGenerate(
                                solarEvolutionData[10].total)),
                        BarsContainer(
                          maxAxisValue: _makeDivisiblebyThousand(
                              solarEvolutionData[10].total),
                          solarEvolutionData: solarEvolutionData,
                          containerWidth: width,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
