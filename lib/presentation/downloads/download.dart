import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/constant.dart';

import 'package:netflix/widgets/appbar.dart';

class DownloadScreen extends StatelessWidget {
  DownloadScreen({super.key});
  final List<String> ImageList = [
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8iTOdmM3DDHT1MOmsVU16QvupK8.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8xV47NDrjdZDpkVcCFqkdHa3T0C.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vrQHDXjVmbYzadOXQ0UaObunoy2.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: appbarWidgets(title: 'Downloads')),
        body: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    fhieght,
                    fwidth,
                    Icon(Icons.settings),
                    fwidth,
                    Text(
                      'smart download',
                      style: GoogleFonts.montserrat(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                fhieght,
                Text('Introducing Downloads for you ',
                    style: GoogleFonts.montserrat(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                fhieght,
                Text(
                  'we will download a personilized selectoinn\n of movies and shows for you so there is always something to watch on your device ',
                  style: GoogleFonts.montserrat(),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                    width: size.width,
                    height: size.width - 60,
                    child: Stack(alignment: Alignment.center, children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: size.width * 0.35,
                      ),
                      downloadImage(
                        angle: 18,
                        margin: EdgeInsets.only(left: 90),
                        ImageList: ImageList[0],
                        size: Size(size.width * .60, size.width * .60),
                      ),
                      downloadImage(
                        angle: -18,
                        margin: EdgeInsets.only(right: 90),
                        ImageList: ImageList[1],
                        size: Size(size.width * .60, size.width * .60),
                      ),
                      downloadImage(
                        margin: EdgeInsets.only(right: 0),
                        ImageList: ImageList[2],
                        size: Size(size.width * .60, size.width * .60),
                      )
                    ])),
                SizedBox(
                  width: double.infinity,
                  child: MaterialButton(
                    color: blue,
                    onPressed: () {},
                    child: Text(
                      'Set up',
                      style: TextStyle(color: bgcolor, fontSize: 17),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: MaterialButton(
                    color: white,
                    onPressed: () {},
                    child: Text(
                      'What you want to d',
                      style: TextStyle(color: bgcolor, fontSize: 17),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}

class downloadImage extends StatelessWidget {
  const downloadImage({
    super.key,
    this.angle = 0,
    required this.size,
    required this.margin,
    required this.ImageList,
  });
  final EdgeInsets margin;
  final String ImageList;
  final double angle;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(ImageList)),
            borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}
