import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/search/widget/title.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        searchTitle(title: 'Movie & Tv'),
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1 / 1.5,
            children: List.generate(20, (index) {
              return containerWidget();
            }),
          ),
        )
      ],
    );
  }
}

class containerWidget extends StatelessWidget {
  const containerWidget({super.key});
  final image =
      "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vrQHDXjVmbYzadOXQ0UaObunoy2.jpg";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                image,
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(14)),
    );
  }
}
