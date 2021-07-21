import 'package:flutter/material.dart';

import 'home_title_widget.dart';
import 'home_title_icon_widget.dart';

// ignore: must_be_immutable
class NewProcessWidget extends StatelessWidget {
  String logo, lokasi, bagian, nama;

  NewProcessWidget({
    required this.logo,
    required this.lokasi,
    required this.bagian,
    required this.nama,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Color(0xffFFFBFF),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Image.asset(
              logo,
              height: 60,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeTitleWidget(
                  marginHor: 10,
                  marginVer: 2,
                  fontSize: 18,
                  title: bagian,
                  fontWeight: FontWeight.w600,
                ),
                HomeTitleWidget(
                  marginHor: 10,
                  marginVer: 3,
                  fontSize: 14,
                  title: nama,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  fontColor: Colors.black87,
                ),
                HomeTitleIconWidget(
                  marginVer: 2,
                  marginHor: 7,
                  icon: Icons.location_on,
                  iconColor: Color(0xff2DA83E),
                  iconSize: 20,
                  title: lokasi,
                  fontFamily: 'Nunito',
                  fontweight: FontWeight.w600,
                  fontSize: 14,
                  fontColor: Colors.black87,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
