import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WidgetDynamicButton extends StatelessWidget {
  double outerPadding = 0;
  double innerPadding = 0;
  double fontSize = 0;
  double borderRadius = 0;

  var title;
  final fontFamily;
  final fontWeight;
  final fontColor;
  final bgColor;
  final borderColor;
  final onPressed;

  WidgetDynamicButton({
    required this.outerPadding,
    required this.innerPadding,
    required this.fontSize,
    required this.borderRadius,
    this.title,
    this.fontFamily,
    this.fontWeight,
    this.fontColor,
    this.bgColor,
    this.borderColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(outerPadding),
            child: ElevatedButton(
              onPressed: onPressed,
              child: Padding(
                padding: EdgeInsets.all(innerPadding),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: fontSize,
                    fontFamily: fontFamily,
                    fontWeight: fontWeight,
                  ),
                ),
              ),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(fontColor),
                backgroundColor: MaterialStateProperty.all(bgColor),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    side: BorderSide(color: borderColor),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
