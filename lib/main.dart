import 'package:flutter/material.dart';
import 'package:internship_app/screen/Intro.dart';

void main(){
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Internship app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: IntroScreen(),
      ),
    );
  }
}
