class Calculos {
  double getPercentOfValue(double value, double reference) {
    double result = (100 * value) / reference;
    return double.parse(result.toStringAsFixed(2));
  }

  double getValueOfPercent(double percent, double reference) {
    double result = (reference * percent) / 100;
    return double.parse(result.toStringAsFixed(2));
  }
}