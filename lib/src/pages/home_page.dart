import 'package:absolar/src/charts/solar_evolution_chart/solar_evolution_chart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SolarEvolutionChart(),
    );
  }
}
