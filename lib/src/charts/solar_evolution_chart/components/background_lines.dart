import 'package:flutter/material.dart';

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
    return (containerHeight - (numberOfLines * _thickness)) /
        (numberOfLines - 1);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: containerHeight,
        child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              return Divider(
                height: 1,
                thickness: _thickness,
              );
            },
            separatorBuilder: (_, n) {
              double? newHeight = _calculateSpace();
              return SizedBox(height: newHeight);
            },
            itemCount: numberOfLines));
  }
}
