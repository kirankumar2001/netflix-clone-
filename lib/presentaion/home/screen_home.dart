import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/constants.dart';
import 'package:netflix/presentaion/home/widgets/background_card.dart';
import 'package:netflix/presentaion/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentaion/home/widgets/number_cards.dart';
import 'package:netflix/presentaion/home/widgets/number_top_card.dart';
import 'package:netflix/presentaion/search/widgets/search_result.dart';
import 'package:netflix/presentaion/widgets/main_card.dart';
import 'package:netflix/presentaion/widgets/main_title.dart';
import 'package:netflix/presentaion/widgets/main_title_card.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollnotifier,
      builder: (BuildContext context, index, _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final direction = notification.direction;
            print(direction);
            if (direction == ScrollDirection.reverse) {
              scrollnotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollnotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: const [
                  BackgroundCard(),
                  MainTitleCard(
                    title: "Released in the past year",
                  ),
                  kHeight,
                  MainTitleCard(
                    title: "Trending Now",
                  ),
                  kHeight,
                  MainTopNumberCard(),
                  kHeight,
                  MainTitleCard(
                    title: "Tense Dramas",
                  ),
                  kHeight,
                  MainTitleCard(
                    title: "South Indian Cinema",
                  ),
                ],
              ),
              scrollnotifier.value == true
                  ? AnimatedContainer(
                      duration: Duration(microseconds: 5000),
                      width: double.infinity,
                      height: 90,
                      color: Colors.black.withOpacity(0.3),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png",
                                width: 60,
                                height: 60,
                              ),
                              const Spacer(),
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
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("TV Shows", style: kHomeTitle),
                              Text(
                                "Movies",
                                style: kHomeTitle,
                              ),
                              Text(
                                "Categories",
                                style: kHomeTitle,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  : kHeight
            ],
          ),
        );
      },
    ));
  }
}
