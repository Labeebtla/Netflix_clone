import 'package:flutter/material.dart';
import 'package:netflix/core/constants/constant.dart';
import 'package:netflix/presentation/home/widgets/home_widget.dart';
import 'package:netflix/presentation/home/widgets/number_card.dart';

class NumberMainCard extends StatelessWidget {
  const NumberMainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTitle(title: 'Top 10 Tv Show In India Today'),
        lhieght,
        LimitedBox(
          maxHeight: 150,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                (index) => NumberCard(
                      index: index,
                    )),
          ),
        )
      ],
    );
  }
}
