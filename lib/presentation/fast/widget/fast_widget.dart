import 'package:flutter/material.dart';
import 'package:netflix/core/constants/constant.dart';

class pageViewContainer extends StatelessWidget {
  final int index;
  const pageViewContainer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.volume_mute)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vrQHDXjVmbYzadOXQ0UaObunoy2.jpg"),
                      ),
                      fhieght,
                      PageIcon(icon: Icons.thumb_up, title: 'Like'),
                      fhieght,
                      PageIcon(icon: Icons.message, title: 'comment'),
                      fhieght,
                      PageIcon(icon: Icons.share, title: 'share')
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PageIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  PageIcon({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [IconButton(onPressed: () {}, icon: Icon(icon)), Text(title)],
    );
  }
}
