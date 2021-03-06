import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IntroImageWidget extends StatelessWidget {
  double imgWidth = 0;
  double imgHeight = 0;

  String localImg;

  IntroImageWidget({
    required this.imgWidth,
    required this.imgHeight,
    required this.localImg,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Image.asset(
        localImg,
        width: imgWidth,
        height: imgHeight,
      ),
    );
  }
}
