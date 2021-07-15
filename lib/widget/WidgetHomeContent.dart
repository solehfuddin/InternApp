import 'package:flutter/material.dart';

import 'WidgetInfo.dart';

class WidgetHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
            margin: EdgeInsets.only(top: 85),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WidgetInfo(),
                Container(
                  child: Text('AREA ACTIVE HIRING'),
                ),
                Container(
                  child: Text('AREA NEW INTERNSHIP'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
