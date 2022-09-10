import 'package:absolar/src/config/calculos.dart';
import 'package:absolar/src/config/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bar extends StatelessWidget {
  final double barWidth;
  final double barHeight;
  final String totalValue;
  final int maxAxisValue;
  Bar(
      {Key? key,
      required this.barWidth,
      required this.barHeight,
      required this.totalValue,
      required this.maxAxisValue})
      : super(key: key);

  final Calculos calculo = Calculos();

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
        Positioned(
          top: -15 - (barHeight - 350),
          child: Text(
            totalValue,
            style: GoogleFonts.lato(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: CustomColor.vermelho),
          ),
        )
      ],
    );
  }
}
