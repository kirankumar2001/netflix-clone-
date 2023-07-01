import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/constants.dart';
import 'package:netflix/presentaion/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentaion/widgets/video_widgets.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "FEB ",
                style: TextStyle(fontSize: 20, color: kgreycolor),
              ),
              Text(
                "11",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5),
              )
            ],
          ),
        ),
        SizedBox(
          height: 450,
          width: size.width - 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight,
              const VideoWidgets(),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "F.R.I.E.N.D.S",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -3),
                  ),
                  Spacer(),
                  Row(
                    children: const [
                      CostomButtonWidget(
                        icon: Icons.all_out_sharp,
                        title: "Remind Me",
                        Iconsize: 25,
                        textSize: 12,
                      ),
                      kWidth,
                      CostomButtonWidget(
                        icon: Icons.info_outline,
                        title: "Info",
                        Iconsize: 25,
                        textSize: 12,
                      ),
                      kWidth,
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Coming On Friday",
              ),
              kHeight,
              Text(
                "F.R.I.E.N.D.S",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Friends is a 90's Comedy TV show, based in Manhattan, about 6 friends who go through just about every life experience imaginable together; love, marriage, divorce, children, heartbreaks, fights, new jobs and job losses and all sorts of drama.",
                style: TextStyle(
                  color: kgreycolor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
