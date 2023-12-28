import 'package:flutter/material.dart';
import 'package:netflix/core/constants/constant.dart';
import 'package:netflix/presentation/home/widgets/icon_widget.dart';

class waitingWidget extends StatelessWidget {
  const waitingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return SizedBox(
      width: size,
      height: 480,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/AqgFkAcZjxr6x8TXHx4StaKr7t1.jpg',
                width: size,
                height: 200,
                fit: BoxFit.fill,
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
          lhieght,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              icon(
                  licon: Icons.share,
                  text: 'Share',
                  iconsize: 25,
                  textsize: 12),
              swidth,
              icon(
                  licon: Icons.add,
                  text: 'My List',
                  iconsize: 25,
                  textsize: 12),
              swidth,
              icon(
                  licon: Icons.play_arrow,
                  text: 'play',
                  iconsize: 25,
                  textsize: 12)
            ],
          ),
          Row(
            children: [
              Image.network(
                'https://static.vecteezy.com/system/resources/previews/019/956/195/original/netflix-transparent-netflix-free-free-png.png',
                width: 40,
                height: 40,
              ),
              Text('Series')
            ],
          ),
          Text(
            'Kung Fu Panda',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          fhieght,
          Text(
              'This is the martial arts film as an animated ,hero is pandaThis is the martial arts film as an animated ,hero is pandaThis is the martial arts film as an animated ,hero is panda'),
          SizedBox(
            height: 50,
          ),
          lhieght,
        ],
      ),
    );
  }
}
