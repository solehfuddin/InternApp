import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WidgetTextInput extends StatefulWidget {
  double horizontalMargin = 0;
  double fontSize = 0;
  double borderRadius;

  final fontFamily;
  final fontWeight;
  final hintText;
  final hintColor;
  final bgColor;

  var controller;

  WidgetTextInput({
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
  _WidgetTextInputState createState() => _WidgetTextInputState();
}

class _WidgetTextInputState extends State<WidgetTextInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: widget.horizontalMargin,
      ),
      child: TextField(
        controller: widget.controller,
        style: TextStyle(
          color: Colors.black87,
          fontSize: widget.fontSize,
          fontFamily: widget.fontFamily,
          fontWeight: widget.fontWeight,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(widget.borderRadius),
            ),
          ),
          filled: true,
          hintStyle: TextStyle(color: widget.hintColor),
          hintText: widget.hintText,
          fillColor: widget.bgColor,
        ),
      ),
    );
  }
}
