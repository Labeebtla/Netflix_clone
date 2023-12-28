import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widgets/icon_widget.dart';
import 'package:netflix/presentation/home/widgets/playbutton.dart';

class backgroundCard extends StatelessWidget {
  const backgroundCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg'),
                fit: BoxFit.fill),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                icon(
                    licon: Icons.add,
                    text: 'My List',
                    iconsize: 20,
                    textsize: 20),
                playbutton(),
                icon(
                    licon: Icons.info_outline,
                    text: 'info',
                    iconsize: 20,
                    textsize: 20)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
