import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/constants/constant.dart';

class appbarWidgets extends StatelessWidget {
  final title;
  appbarWidgets({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
                fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
          fwidth,
          Container(
            height: 20,
            width: 20,
            color: Colors.blue,
          ),
          fwidth
        ],
      ),
    );
  }
}
