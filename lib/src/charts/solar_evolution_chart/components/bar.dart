import 'package:absolar/src/config/calculos.dart';
import 'package:absolar/src/config/custom_color.dart';
import 'package:absolar/src/services/intl_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bar extends StatelessWidget {
  final double gdBarHeight;
  final double gcBarHeight;
  final double barHeight;
  final double barWidth;
  final double totalValue;
  final double containerHeight;
  late String gdValue;
  late String gcvalue;
  double gd;
  double gc;

  Bar({
    Key? key,
    required this.gcBarHeight,
    required this.gdBarHeight,
    required this.barWidth,
    required this.barHeight,
    required this.totalValue,
    required this.containerHeight,
    required this.gd,
    required this.gc,
  }) : super(key: key) {
    gdValue = intlServices.formatNumber(gd);
    gcvalue = intlServices.formatNumber(gc);
  }

  final Calculos calculo = Calculos();

  calculatePositionGcText() {
    return ((gcBarHeight / 2) + gdBarHeight) - 15;
  }

  calculatePositionGdText() {
    return ((gdBarHeight / 2)) - 12;
  }

  calculatePositionTotalText() {
    return -20 - (barHeight - containerHeight);
  }

  bool isTiny() {
    return gdBarHeight < 20;
  }

  double modifierPosition() {
    if (gdBarHeight > 20 && gdBarHeight < 30) {
      return 20;
    } else if (gdBarHeight > 40 && gdBarHeight < 50) {
      return 9;
    } else {
      return 0;
    }
  }

  Color modifierColor() {
    if (gdBarHeight > 20 && gdBarHeight < 30) {
      return Colors.black;
    } else {
      return Colors.white;
    }
  }

  IntlServices intlServices = IntlServices();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: barWidth,
          alignment: Alignment.bottomRight,
          child: Container(
            height: barHeight,
            color: CustomColor.azulEscuro,
          ),
        ),
        Container(
          width: barWidth,
          alignment: Alignment.bottomRight,
          child: Container(
            height: gdBarHeight,
            color: CustomColor.amarelo,
          ),
        ),
        Positioned(
          top: calculatePositionTotalText() - modifierPosition(),
          child: Text(
            intlServices.formatNumber(totalValue),
            style: GoogleFonts.lato(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: CustomColor.vermelho),
          ),
        ),
        if (!isTiny())
          Positioned(
            bottom: calculatePositionGcText() + modifierPosition(),
            child: Column(
              children: [
                Text(
                  gdValue,
                  style: GoogleFonts.lato(
                      fontSize: 10,
                      color: modifierColor(),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  calculo.getPercentOfValue(gd, totalValue),
                  style: GoogleFonts.lato(
                    fontSize: 10,
                    color: modifierColor(),
                  ),
                ),
              ],
            ),
          ),
        if (!isTiny())
          Positioned(
            bottom: calculatePositionGdText(),
            child: Column(
              children: [
                Text(
                  gcvalue,
                  style: GoogleFonts.lato(
                      fontSize: 10,
                      color: CustomColor.azulEscuro,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  calculo.getPercentOfValue(gc, totalValue),
                  style: GoogleFonts.lato(
                    fontSize: 10,
                    color: CustomColor.azulEscuro,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
