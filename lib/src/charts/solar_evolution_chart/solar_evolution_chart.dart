import 'package:absolar/src/charts/components/box_title.dart';
import 'package:absolar/src/charts/solar_evolution_chart/components/background_lines.dart';
import 'package:absolar/src/charts/solar_evolution_chart/components/bars_container.dart';
import 'package:flutter/material.dart';

class SolarEvolutionChart extends StatelessWidget {
  const SolarEvolutionChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 470,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BoxTitle(
                    title:
                        'Evolution of the Solar Photovoltaic Energy in Brazil',
                    source: 'ANEEL/ABSOLAR, 2022',
                  ),
                  Stack(
                    children: [
                      BackgroundLines(numberOfLines: 18),
                      BarsContainer(
                        containerWidth: 470,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
