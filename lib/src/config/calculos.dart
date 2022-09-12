class Calculos {
  String getPercentOfValue(double value, double reference) {
    double result = (100 * value) / reference;
    return '${result.round()}%';
  }

  double getValueOfPercent(double percent, double reference) {
    double result = (reference * percent) / 100;
    return double.parse(result.toStringAsFixed(2));
  }

  double calculateSpaceBetween(
    double heightOrwidth,
    int numberOfLines,
    double thickness,
  ) {
    return (heightOrwidth - (numberOfLines * thickness)) / (numberOfLines - 1);
  }
}
