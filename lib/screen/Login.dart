import 'package:flutter/material.dart';
import 'package:internship_app/widget/WidgetAppbar.dart';
import 'package:internship_app/widget/WidgetIntroContent.dart';
import 'package:internship_app/widget/WidgetIntroTitle.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internship app',
      theme: ThemeData(),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                WidgetAppbar(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                WidgetIntroTitle(
                  spaceTop: 15,
                  spaceLine: 7,
                  fontSize: 24,
                  primaryColor: Color(0xff35466A),
                  secondColor: Color(0xff04A64E),
                  fontweight: FontWeight.w600,
                  textTopPrimary: "Selamat",
                  textTopSecond: "Datang",
                ),
                SizedBox(height: 15),
                WidgetIntroContent(
                  description:
                  'Langkah selanjutnya masukkan data berikut, supaya kamu bisa segera bergabung dan ajukan magang diperusahaan impianmu',
                  fontSize: 16,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                  fontColor: Color(0xff8F9095),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
