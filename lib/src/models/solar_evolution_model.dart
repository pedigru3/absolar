// feito no quicktype https://app.quicktype.io/

import 'dart:convert';

List<EvolutionSolarChart> evolutionSolarChartFromJson(String str) =>
    List<EvolutionSolarChart>.from(
        json.decode(str).map((x) => EvolutionSolarChart.fromJson(x)));

String evolutionSolarChartToJson(List<EvolutionSolarChart> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

List<EvolutionSolarChart> evolutionSolarChartFromList(List str) =>
    List<EvolutionSolarChart>.from(
        str.map((x) => EvolutionSolarChart.fromJson(x)));

class EvolutionSolarChart {
  EvolutionSolarChart({
    required this.type,
    required this.column1,
    required this.column2,
    required this.column3,
    required this.column4,
    required this.column5,
    required this.column6,
    required this.column7,
    required this.column8,
    required this.column9,
    required this.column10,
    required this.column11,
  });

  final String type;
  final double column1;
  final double column2;
  final double column3;
  final double column4;
  final double column5;
  final double column6;
  final double column7;
  final double column8;
  final double column9;
  final double column10;
  final double column11;

  factory EvolutionSolarChart.fromJson(Map<String, dynamic> json) =>
      EvolutionSolarChart(
        type: json["type"],
        column1: json["column1"],
        column2: json["column2"],
        column3: json["column3"],
        column4: json["column4"],
        column5: json["column5"],
        column6: json["column6"],
        column7: json["column7"],
        column8: json["column8"],
        column9: json["column9"],
        column10: json["column10"],
        column11: json["column11"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "column1": column1,
        "column2": column2,
        "column3": column3,
        "column4": column4,
        "column5": column5,
        "column6": column6,
        "column7": column7,
        "column8": column8,
        "column9": column9,
        "column10": column10,
        "column11": column11,
      };
}
