import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/constants.dart';

class VideoWidgets extends StatelessWidget {
  const VideoWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            newAndHotTempImage,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 5,
          right: 10,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: Colors.black.withOpacity(0.5),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.volume_off,
                color: kWhitecolor,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
