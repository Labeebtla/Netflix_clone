import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/downloads/download.dart';
import 'package:netflix/presentation/fast/fast.dart';
import 'package:netflix/presentation/home/hom_screen.dart';
import 'package:netflix/presentation/mainpage/widgets/bottom_nav.dart';
import 'package:netflix/presentation/new&hot/new_hot_screen.dart';
import 'package:netflix/presentation/search/search.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final pages = [
    HomeScreen(),
    NewhotScreen(),
    FastScreen(),
    SearchScreen(),
    DownloadScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: ValueListenableBuilder(
        valueListenable: indexNotifier,
        builder: (context, int index, _) {
          return pages[index];
        },
      ),
      bottomNavigationBar: BottomNavWidgets(),
    );
  }
}
