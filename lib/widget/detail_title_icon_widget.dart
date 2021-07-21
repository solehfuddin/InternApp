import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailTitleIconWidget extends StatelessWidget {
  double marginHor = 0;
  double marginVer = 0;
  double iconSize = 0;
  double fontSize = 0;

  String title, fontFamily;
  final icon;
  final iconColor;
  final fontweight;
  final fontColor;

  DetailTitleIconWidget({
    required this.marginHor,
    required this.marginVer,
    required this.iconSize,
    required this.title,
    required this.fontFamily,
    required this.fontSize,
    this.icon,
    this.iconColor,
    this.fontweight,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: marginVer, horizontal: marginHor),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: iconColor,
            size: iconSize,
          ),
          SizedBox(
            width: 7,
            height: 1.5,
          ),
          Flexible(
            child: Text(
              title,
              overflow: TextOverflow.visible,
              style: TextStyle(
                fontFamily: fontFamily,
                fontWeight: fontweight,
                fontSize: fontSize,
                color: fontColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
