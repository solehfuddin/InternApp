import 'package:flutter/material.dart';
import 'package:internship_app/widget/WidgetHomeTitle.dart';
import 'package:internship_app/widget/WidgetHomeTitleWithIcon.dart';

class WidgetSedangProses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Color(0xffFFFBFF),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Image.asset(
                  'images/tokped.png',
                  height: 60,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WidgetHomeTitle(
                    marginHor: 0,
                    marginVer: 5,
                    fontSize: 18,
                    title: 'Desainer UI / UX',
                    fontWeight: FontWeight.w600,
                  ),
                  WidgetHomeTitle(
                    marginHor: 0,
                    marginVer: 0,
                    fontSize: 14,
                    title: 'Tokopedia',
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ],
          ),
          WidgetHomeTitleWithIcon(
            marginVer: 5,
            marginHor: 15,
            icon: Icons.location_on,
            iconColor: Color(0xff2DA83E),
            iconSize: 22,
            title: 'Jakarta',
            fontFamily: 'Nunito',
            fontweight: FontWeight.w600,
            fontSize: 16,
            fontColor: Colors.black87,
          ),
          WidgetHomeTitleWithIcon(
            marginVer: 5,
            marginHor: 15,
            icon: Icons.calendar_today,
            iconColor: Color(0xff2DA83E),
            iconSize: 22,
            title: '6 Bulan',
            fontFamily: 'Nunito',
            fontweight: FontWeight.w600,
            fontSize: 16,
            fontColor: Colors.black87,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 35),
                    child: Text(
                      'Ajukan',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff35466A)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: Color(0xff35466A)),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                '100 Pelamar',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
