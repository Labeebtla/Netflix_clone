import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/constant.dart';
import 'package:netflix/presentation/home/widgets/icon_widget.dart';
import 'package:netflix/presentation/new&hot/widgets/comingsoon_widget.dart';
import 'package:netflix/presentation/new&hot/widgets/waiting_widget.dart';
import 'package:netflix/presentation/search/widget/search_result.dart';
import 'package:netflix/widgets/appbar.dart';

class NewhotScreen extends StatelessWidget {
  const NewhotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      animationDuration: Duration(milliseconds: 1000),
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBar(
              title: Row(
                children: [
                  Text(
                    'New & Hot',
                    style: GoogleFonts.montserrat(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
                  fwidth,
                  Container(
                    height: 20,
                    width: 20,
                    color: Colors.blue,
                  ),
                  fwidth
                ],
              ),
              bottom: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  automaticIndicatorColorAdjustment: false,
                  labelColor: bgcolor,
                  unselectedLabelColor: white,
                  isScrollable: true,
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  indicator: BoxDecoration(
                      color: white, borderRadius: BorderRadius.circular(30)),
                  tabs: [
                    Tab(
                      text: '🍿 Coming Soon',
                    ),
                    Tab(
                      text: '👀 Everyone Watching',
                    )
                  ]),
            )),
        body: TabBarView(children: [
          tabbarviewComingsoon(),
          tabbarviewWaiting(),
        ]),
      ),
    );
  }
}

tabbarviewComingsoon() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) => comingsoon_widget(),
  );
}

tabbarviewWaiting() {
  return ListView.builder(
    itemBuilder: (context, index) => waitingWidget(),
    itemCount: 10,
  );
}
