import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BackgroundLines extends StatelessWidget {
  final int numberOfLines;
  final double containerHeight;

  const BackgroundLines({
    Key? key,
    required this.numberOfLines,
    required this.containerHeight,
  }) : super(key: key);

  final double _thickness = 1;

  double _calculateSpace() {
    return (containerHeight - (numberOfLines * 11)) / (numberOfLines - 1);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: containerHeight,
        child: ListView.separated(
            reverse: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              return Row(
                children: [
                  Text(
                    '$index',
                    style: GoogleFonts.lato(fontSize: 9),
                  ),
                  Expanded(
                    child: Divider(
                      height: 1,
                      thickness: _thickness,
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (_, n) {
              double? newHeight = _calculateSpace();
              return SizedBox(height: newHeight);
            },
            itemCount: numberOfLines));
  }
}
