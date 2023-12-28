import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class searchTitle extends StatelessWidget {
  final String title;
  const searchTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 25),
    );
  }
}
