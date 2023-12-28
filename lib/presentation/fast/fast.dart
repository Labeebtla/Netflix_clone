import 'package:flutter/material.dart';
import 'package:netflix/presentation/fast/widget/fast_widget.dart';

class FastScreen extends StatelessWidget {
  const FastScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(20, (index) {
          return pageViewContainer(index: index);
        }),
      )),
    );
  }
}
