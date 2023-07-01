import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentaion/downloads/screen_downloads.dart';
import 'package:netflix/presentaion/fast_laugh/fast_laugh.dart';
import 'package:netflix/presentaion/home/screen_home.dart';
import 'package:netflix/presentaion/main_pages/widgets/bottom_nav.dart';
import 'package:netflix/presentaion/new_and_hot/new-and_hot.dart';
import 'package:netflix/presentaion/search/search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});
  final _pages = [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationWidgets(),
    );
  }
}
