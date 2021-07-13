import 'package:flutter/material.dart';
import 'package:internship_app/screen/Home.dart';
import 'package:internship_app/widget/WidgetAppbar.dart';
import 'package:internship_app/widget/WidgetDynamicButton.dart';
import 'package:internship_app/widget/WidgetIntroContent.dart';
import 'package:internship_app/widget/WidgetIntroImage.dart';
import 'package:internship_app/widget/WidgetIntroTitle.dart';
import 'package:internship_app/widget/WidgetTextInput.dart';
import 'package:internship_app/widget/WidgetTextTitle.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internship app',
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.white,
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
                WidgetIntroImage(
                  imgWidth: 250,
                  imgHeight: 250,
                  localImg: 'images/internship.png',
                ),
                WidgetIntroTitle(
                  spaceTop: 5,
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
                SizedBox(
                  height: 25,
                ),
                WidgetTextTitle(
                  horizontalMargin: 40,
                  textTitle: "Nama Lengkap",
                  fontSize: 16,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.bold,
                  textColor: Colors.black54,
                ),
                WidgetTextInput(
                  horizontalMargin: 40,
                  borderRadius: 10,
                  fontSize: 16,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w600,
                  hintText: "Muhamad Solehfuddin",
                  hintColor: Colors.grey,
                  bgColor: Colors.white,
                  controller: _controller,
                ),
                SizedBox(
                  height: 25,
                ),
                WidgetDynamicButton(
                  outerPadding: 40,
                  innerPadding: 10,
                  fontSize: 20,
                  borderRadius: 10,
                  bgColor: Color(0xff35466A),
                  borderColor: Color(0xff35466A),
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                  fontColor: Colors.white,
                  title: "Daftarkan",
                  onPressed: () {
                    if (_controller.text.isEmpty)
                      {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text("Harap masukkan nama anda"),
                              );
                            });
                      }
                    else
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return HomeScreen(name: _controller.text);
                        })).then((value){
                          _controller.clear();
                        });
                      }
                  },
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
