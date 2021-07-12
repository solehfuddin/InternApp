import 'package:flutter/material.dart';
import 'package:internship_app/widget/WidgetDynamicButton.dart';
import 'package:internship_app/widget/WidgetIntroContent.dart';
import 'package:internship_app/widget/WidgetIntroImage.dart';
import 'package:internship_app/widget/WidgetIntroTitle.dart';
import 'package:internship_app/screen/Login.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            WidgetIntroTitle(
              spaceTop: 50,
              spaceLine: 7,
              fontSize: 30,
              primaryColor: Color(0xff35466A),
              secondColor: Color(0xff04A64E),
              fontweight: FontWeight.bold,
              textTopPrimary: "Mau",
              textTopSecond: "Magang",
            ),
            WidgetIntroTitle(
              spaceTop: 10,
              spaceLine: 7,
              fontSize: 30,
              primaryColor: Color(0xff04A64E),
              secondColor: Color(0xff35466A),
              fontweight: FontWeight.bold,
              textTopPrimary: "Sesuai",
              textTopSecond: "Keinginanmu ?",
            ),
            WidgetIntroImage(
              imgWidth: 320,
              imgHeight: 320,
              localImg: 'images/intern.jpg',
            ),
            WidgetIntroContent(
              description:
                  'Temukan tempat magang sesuai keinginan dan raih kesempatan untuk gabung diperusahaan impianmu',
              fontSize: 16,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              fontColor: Color(0xff8F9095),
            ),
            SizedBox(
              height: 30,
            ),
            WidgetDynamicButton(
              outerPadding: 40,
              innerPadding: 10,
              title: 'Ayo Mulai',
              fontSize: 20,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
              fontColor: Colors.white,
              bgColor: Color(0xff35466A),
              borderColor: Color(0xff35466A),
              borderRadius: 24,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
