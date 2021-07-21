import 'package:flutter/material.dart';
import 'package:internship_app/screen/home_screen.dart';
import 'package:internship_app/widget/appbar_widget.dart';
import 'package:internship_app/widget/dynamic_button_widget.dart';
import 'package:internship_app/widget/intro_content_widget.dart';
import 'package:internship_app/widget/intro_image_widget.dart';
import 'package:internship_app/widget/intro_title_widget.dart';
import 'package:internship_app/widget/text_input_widget.dart';
import 'package:internship_app/widget/text_title_widget.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internship app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    AppbarWidget(
                      title: 'Registrasi',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IntroImageWidget(
                      imgWidth: 250,
                      imgHeight: 250,
                      localImg: 'images/internship.png',
                    ),
                    IntroTitleWidget(
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
                    IntroContentWidget(
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
                    TextTitleWidget(
                      horizontalMargin: 40,
                      textTitle: "Nama Lengkap",
                      fontSize: 16,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold,
                      textColor: Colors.black54,
                    ),
                    TextInputWidget(
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
                    DynamicButtonWidget(
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
            )
        ),
      ),
    );
  }
}

