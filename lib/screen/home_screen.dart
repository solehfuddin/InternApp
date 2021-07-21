import 'package:flutter/material.dart';
import 'package:internship_app/widget/home_appbar_widget.dart';
import 'package:internship_app/widget/home_content_widget.dart';

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
              HomeAppbarWidget(
                bgColor: Color(0xff304572),
                padding: 20,
                imgProfile: 'images/person.jpg',
                greeting: 'Selamat Datang,',
                name: name!,
              ),
              SingleChildScrollView(
                child: HomeContentWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
