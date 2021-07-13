import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  String? name;

  HomeScreen({this.name});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Intership app",
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Text(name!),
        ),
      ),
    );
  }
}
