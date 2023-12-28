import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class playbutton extends StatelessWidget {
  const playbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(white),
            shape: MaterialStateProperty.all(LinearBorder.none)),
        icon: Icon(
          Icons.play_arrow,
          color: bgcolor,
          size: 25,
        ),
        label: Text(
          'Play',
          style: TextStyle(color: bgcolor, fontSize: 15),
        ));
  }
}
