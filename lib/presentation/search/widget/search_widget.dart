import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/constant.dart';
import 'package:netflix/presentation/search/widget/title.dart';

final image =
    'https://www.themoviedb.org/t/p/w250_and_h141_face/feSiISwgEpVzR1v3zv2n2AU4ANJ.jpg';

class SearchWidget extends StatelessWidget {
  SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        searchTitle(title: 'Top Search'),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) => imageWidget(),
              separatorBuilder: (context, index) => fhieght,
              itemCount: 20),
        )
      ],
    );
  }
}

class imageWidget extends StatelessWidget {
  const imageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final imagewidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: imagewidth * .3,
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover)),
        ),
        fwidth,
        Expanded(child: Text('Movie Name')),
        SizedBox(
          width: 60,
        ),
        Expanded(
          child: CircleAvatar(
            radius: 22,
            backgroundColor: white,
            child: CircleAvatar(
              backgroundColor: bgcolor,
              child: Icon(Icons.play_arrow),
            ),
          ),
        )
      ],
    );
  }
}
