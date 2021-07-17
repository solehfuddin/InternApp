import 'package:flutter/material.dart';
import 'package:internship_app/widget/WidgetBaruDitambah.dart';
import 'package:internship_app/widget/WidgetSedangProses.dart';

import 'WidgetHomeTitle.dart';

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
                Container(
                  margin: EdgeInsets.all(20),
                  child: Image.asset('images/banner.png'),
                ),
                WidgetHomeTitle(
                  marginHor: 20,
                  marginVer: 10,
                  title: 'Sedang Diproses',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                Container(
                  height: 230,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 5),
                        child: WidgetSedangProses(),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: WidgetSedangProses(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 20),
                        child: WidgetSedangProses(),
                      ),
                    ],
                  ),
                ),
                WidgetHomeTitle(
                  marginHor: 20,
                  marginVer: 10,
                  title: 'Akan Ditambahkan',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: WidgetBaruDitambah(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: WidgetBaruDitambah(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: WidgetBaruDitambah(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
