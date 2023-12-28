import 'package:flutter/material.dart';

class icon extends StatelessWidget {
  final IconData licon;
  final String text;
  final double textsize;
  final double iconsize;
  const icon(
      {super.key,
      required this.licon,
      required this.text,
      required this.iconsize,
      required this.textsize});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          licon,
          size: iconsize,
        ),
        Text(
          text,
          style: TextStyle(fontSize: textsize),
        )
      ],
    );
  }
}
