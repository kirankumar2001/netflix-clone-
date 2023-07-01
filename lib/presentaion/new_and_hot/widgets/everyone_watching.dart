import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/constants.dart';
import 'package:netflix/presentaion/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentaion/widgets/video_widgets.dart';

class EveryOnesWatchingWidget extends StatelessWidget {
  const EveryOnesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        Text(
          "Money Heist",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "The series was initially intended as a limited series to be told in two parts. It had its original run of 15 episodes on Spanish network Antena 3 from 2 May 2017 through 23 November 2017. Netflix acquired global streaming rights in late 2017",
          style: TextStyle(
            color: kgreycolor,
          ),
        ),
        kHeight50,
        VideoWidgets(),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CostomButtonWidget(
              icon: Icons.share,
              title: "Share",
              Iconsize: 25,
              textSize: 16,
            ),
            kWidth,
            CostomButtonWidget(
              icon: Icons.add,
              title: "My List",
              Iconsize: 25,
              textSize: 16,
            ),
            kWidth,
            CostomButtonWidget(
              icon: Icons.play_arrow,
              title: "Play",
              Iconsize: 25,
              textSize: 16,
            ),
            kWidth,
          ],
        )
      ],
    );
  }
}
