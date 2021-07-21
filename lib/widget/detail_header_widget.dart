import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_app/widget/home_title_widget.dart';
import 'package:internship_app/widget/home_title_icon_widget.dart';

// ignore: must_be_immutable
class DetailHeaderWidget extends StatelessWidget {
  String logo, bagian, durasi, lokasi;

  DetailHeaderWidget({
    required this.logo,
    required this.bagian,
    required this.durasi,
    required this.lokasi,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          logo,
          width: 80,
          height: 80,
        ),
        HomeTitleWidget(
          marginHor: 0,
          marginVer: 13,
          fontSize: 16,
          title: bagian,
          fontWeight: FontWeight.w600,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeTitleWidget(
              marginHor: 0,
              marginVer: 0,
              fontSize: 12,
              title: durasi + ' / ',
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
            ),
            HomeTitleIconWidget(
              marginHor: 0,
              marginVer: 0,
              iconSize: 16,
              title: lokasi,
              fontFamily: 'Nunito',
              fontSize: 12,
              icon: Icons.location_on,
              iconColor: Color(0xff2DA83E),
              fontweight: FontWeight.w600,
            ),
          ],
        )
      ],
    );
  }
}
