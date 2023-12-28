import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/constants/constant.dart';
import 'package:netflix/presentation/home/widgets/icon_widget.dart';

class comingsoon_widget extends StatelessWidget {
  comingsoon_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return Row(
      children: [
        SizedBox(
          width: 60,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Feb',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '11',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: size - 60,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: Image.network(
                      'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/4Mt7WHox67uJ1yErwTBFcV8KWgG.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: CircleAvatar(
                      child: IconButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.grey.withOpacity(0.3))),
                          icon: Icon(
                            Icons.volume_mute,
                          )),
                    ),
                  ),
                ],
              ),
              fhieght,
              Row(
                children: [
                  Text(
                    'one piece',
                    style: GoogleFonts.montserratAlternates(
                        fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Row(
                    children: [
                      icon(
                          licon: Icons.notifications_none,
                          text: 'Remind me',
                          iconsize: 14,
                          textsize: 12),
                      fwidth,
                      icon(
                          licon: Icons.info_outline,
                          text: 'Info',
                          iconsize: 14,
                          textsize: 12)
                    ],
                  ),
                ],
              ),
              Text('Coming On Friday'),
              Row(
                children: [
                  Image.network(
                    'https://static.vecteezy.com/system/resources/previews/019/956/195/original/netflix-transparent-netflix-free-free-png.png',
                    width: 40,
                    height: 40,
                  ),
                  Text('Film')
                ],
              ),
              Text(
                'one piece',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'A Very Special Feature! Momonosukes Road to Becoming a Great Shogun',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        )
      ],
    );
  }
}
