import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextInputWidget extends StatelessWidget {
  double horizontalMargin = 0;
  double fontSize = 0;
  double borderRadius;

  final fontFamily;
  final fontWeight;
  final hintText;
  final hintColor;
  final bgColor;

  var controller;

  TextInputWidget({
    required this.horizontalMargin,
    required this.fontSize,
    required this.borderRadius,
    this.fontFamily,
    this.fontWeight,
    this.hintColor,
    this.hintText,
    this.bgColor,
    this.controller
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: horizontalMargin,
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(
          color: Colors.black87,
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
          ),
          filled: true,
          hintStyle: TextStyle(color: hintColor),
          hintText: hintText,
          fillColor: bgColor,
        ),
      ),
    );
  }
}

