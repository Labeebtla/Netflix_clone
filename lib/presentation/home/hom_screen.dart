import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/constant.dart';
import 'package:netflix/presentation/home/widgets/Home_set.dart';
import 'package:netflix/presentation/home/widgets/background_card.dart';
import 'package:netflix/presentation/home/widgets/card_widget.dart';
import 'package:netflix/presentation/home/widgets/home_widget.dart';
import 'package:netflix/presentation/home/widgets/icon_widget.dart';
import 'package:netflix/presentation/home/widgets/number_card.dart';
import 'package:netflix/presentation/home/widgets/number_main.dart';
import 'package:netflix/presentation/home/widgets/playbutton.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  ValueNotifier<bool> scrollnotifier = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ValueListenableBuilder(
        valueListenable: scrollnotifier,
        builder: (context, value, child) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              print(direction);
              if (direction == ScrollDirection.reverse) {
                scrollnotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollnotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    backgroundCard(),
                    const HomeSet(
                      title: 'Released in past year',
                    ),
                    const HomeSet(
                      title: 'Trending Now',
                    ),
                    const NumberMainCard(),
                    const HomeSet(
                      title: 'Tense Dramas',
                    ),
                  ],
                ),
                scrollnotifier.value == true
                    ? Container(
                        width: double.infinity,
                        height: 80,
                        color: Colors.black.withOpacity(0.3),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  'https://static.vecteezy.com/system/resources/previews/019/956/195/original/netflix-transparent-netflix-free-free-png.png',
                                  width: 60,
                                  height: 60,
                                ),
                                Spacer(),
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.cast)),
                                fwidth,
                                Container(
                                  height: 20,
                                  width: 20,
                                  color: Colors.blue,
                                ),
                                fwidth
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Tv Shows',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                Text(
                                  'Movies',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                Text(
                                  'Categories',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    : fhieght
              ],
            ),
          );
        },
      ),
    ));
  }
}
