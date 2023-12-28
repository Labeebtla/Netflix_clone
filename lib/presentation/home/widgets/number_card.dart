import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/mBaXZ95R2OxueZhvQbcEWy2DqyO.jpg'))),
            ),
          ],
        ),
        Positioned(
            left: 20,
            bottom: 10,
            child: BorderedText(
              strokeWidth: 3,
              strokeColor: white,
              child: Text(
                '${index + 1}',
                style: GoogleFonts.montserrat(
                    fontSize: 80,
                    decoration: TextDecoration.none,
                    color: bgcolor),
              ),
            ))
      ],
    );
  }
}
