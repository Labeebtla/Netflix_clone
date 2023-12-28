import 'package:flutter/material.dart';
import 'package:netflix/core/constants/constant.dart';
import 'package:netflix/presentation/home/widgets/card_widget.dart';
import 'package:netflix/presentation/home/widgets/home_widget.dart';

class HomeSet extends StatelessWidget {
  final String title;
  const HomeSet({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTitle(title: title),
        lhieght,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => HomeCard()),
          ),
        )
      ],
    );
  }
}
