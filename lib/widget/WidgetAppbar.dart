import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WidgetAppbar extends StatelessWidget {
  String title;
  final onPressed;

  WidgetAppbar({
    this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Row(
        children: [
          IconButton(
            iconSize: 18,
            onPressed: onPressed,
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 35),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
