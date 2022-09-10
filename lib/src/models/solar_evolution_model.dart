import 'dart:convert';

List<SolarEvolutionModel> solarEvolutionModelFromJson(String str) =>
    List<SolarEvolutionModel>.from(
        json.decode(str).map((x) => SolarEvolutionModel.fromJson(x)));

String solarEvolutionModelToJson(List<SolarEvolutionModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SolarEvolutionModel {
  SolarEvolutionModel({
    required this.gc,
    required this.gd,
    required this.total,
  });

  final double gc;
  final double gd;
  final double total;

  factory SolarEvolutionModel.fromJson(Map<String, dynamic> json) =>
      SolarEvolutionModel(
        gc: json["gc"].toDouble(),
        gd: json["gd"].toDouble(),
        total: json["total"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "gc": gc,
        "gd": gd,
        "total": total,
      };
}
