import 'package:flutter/material.dart';
import 'package:internship_app/widget/WidgetHomeAppbar.dart';
import 'package:internship_app/widget/WidgetHomeContent.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  String? name;

  HomeScreen({this.name});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Intership app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              WidgetHomeAppbar(
                bgColor: Color(0xff304572),
                padding: 20,
                imgProfile: 'images/person.jpg',
                greeting: 'Selamat Datang,',
                name: name!,
              ),
              SingleChildScrollView(
                child: WidgetHomeContent(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
