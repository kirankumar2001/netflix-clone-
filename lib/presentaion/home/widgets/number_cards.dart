import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              height: 150,
              width: 40,
            ),
            Container(
              width: 130,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: kRadius20,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://www.themoviedb.org/t/p/w220_and_h330_face/uJYYizSuA9Y3DCs0qS4qWvHfZg4.jpg",
                      ))),
            ),
          ],
        ),
        Positioned(
          left: 25,
          bottom: -30,
          child: BorderedText(
            strokeWidth: 10.0,
            strokeColor: kWhitecolor,
            child: Text(
              "${index + 1}",
              style: TextStyle(
                  fontSize: 140,
                  color: backGroundColor,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}
