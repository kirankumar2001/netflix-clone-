import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/constants.dart';
import 'package:netflix/presentaion/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentaion/new_and_hot/widgets/comingsoon_widget.dart';
import 'package:netflix/presentaion/new_and_hot/widgets/everyone_watching.dart';
import 'package:netflix/presentaion/widgets/app_bar_widget.dart';
import 'package:netflix/presentaion/widgets/video_widgets.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Text(
              "New & Hot",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            actions: [
              const Icon(
                Icons.cast,
                color: kWhitecolor,
              ),
              kWidth,
              Container(
                width: 30,
                height: 30,
                color: Colors.blue,
              ),
              kWidth,
            ],
            bottom: TabBar(
              labelColor: backGroundColor,
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelColor: kWhitecolor,
              isScrollable: true,
              indicator:
                  BoxDecoration(color: kWhitecolor, borderRadius: kRadius30),
              tabs: const [
                Tab(
                  text: "🍿Coming Soon",
                ),
                Tab(
                  text: "👀Everyone's watching",
                )
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _BuildComingSoon(),
            _BuildEveryonesWatchig(),
          ],
        ),
      ),
    );
  }

  Widget _BuildComingSoon() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext contex, index) => const ComingSoonWidget());
  }

  Widget _BuildEveryonesWatchig() {
    return ListView.builder(
      itemBuilder: (BuildContext context, index) =>
          const EveryOnesWatchingWidget(),
    );
  }
}
