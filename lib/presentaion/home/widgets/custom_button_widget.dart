import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class CostomButtonWidget extends StatelessWidget {
  const CostomButtonWidget({
    Key? key,
    required this.icon,
    required this.title,
    this.Iconsize = 30,
    this.textSize = 18,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final double Iconsize;
  final double textSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhitecolor,
          size: Iconsize,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: textSize,
          ),
        )
      ],
    );
  }
}
