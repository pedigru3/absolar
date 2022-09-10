import 'dart:convert';
import 'package:absolar/src/models/solar_evolution_model.dart';

List data = [
  {"gc": 7, "gd": 0, "total": 7},
  {"gc": 11, "gd": 1, "total": 13},
  {"gc": 17, "gd": 4, "total": 21},
  {"gc": 28, "gd": 13, "total": 41},
  {"gc": 29, "gd": 62, "total": 91},
  {"gc": 968, "gd": 190, "total": 1158},
  {"gc": 1825, "gd": 591, "total": 2416},
  {"gc": 2475, "gd": 2134, "total": 4609},
  {"gc": 3093, "gd": 4923, "total": 8017},
  {"gc": 4632, "gd": 9185, "total": 13818},
  {"gc": 5927, "gd": 12727, "total": 18654}
];

String jsonData = jsonEncode(data);

List<SolarEvolutionModel> solarEvolutionData =
    solarEvolutionModelFromJson(jsonData);
