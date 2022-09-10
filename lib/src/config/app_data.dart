import 'package:absolar/src/charts/solar_evolution_chart/solar_evolution_chart.dart';
import 'package:absolar/src/models/solar_evolution_model.dart';

List data = [
  {
    "type": "gc",
    "column1": 7,
    "column2": 11,
    "column3": 17,
    "column4": 28,
    "column5": 29,
    "column6": 968,
    "column7": 1.825,
    "column8": 2.475,
    "column9": 3.093,
    "column10": 4.632,
    "column11": 5.927
  },
  {
    "type": "gd",
    "column1": 0,
    "column2": 1,
    "column3": 4,
    "column4": 13,
    "column5": 62,
    "column6": 190,
    "column7": 591,
    "column8": 2.134,
    "column9": 4.923,
    "column10": 9.185,
    "column11": 12.727
  },
  {
    "type": "total",
    "column1": 7,
    "column2": 13,
    "column3": 21,
    "column4": 41,
    "column5": 91,
    "column6": 1.158,
    "column7": 2.416,
    "column8": 4.609,
    "column9": 8.017,
    "column10": 13.818,
    "column11": 18.654
  }
];

List solarEvolutionData = evolutionSolarChartFromList(data);
