import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  final double barWidth;
  final double barHeight;
  const Bar({Key? key, required this.barWidth, required this.barHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: barWidth,
      alignment: Alignment.bottomRight,
      child: Container(
        height: barHeight,
        color: Colors.blue,
      ),
    );
  }
}
