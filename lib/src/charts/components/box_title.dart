import 'package:absolar/src/config/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxTitle extends StatelessWidget {
  final String title;
  final String source;
  const BoxTitle({Key? key, required this.title, required this.source})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: CustomColor.corPrincipal,
              ),
            ),
            Divider(
              thickness: 1,
              color: CustomColor.corPrincipal,
            )
          ],
        ),
        Positioned(
          right: 2,
          bottom: 10,
          child: Text(
            'Source: $source.',
            style: const TextStyle(fontSize: 9),
          ),
        )
      ],
    );
  }
}
