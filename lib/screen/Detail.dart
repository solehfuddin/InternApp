import 'package:flutter/material.dart';
import 'package:internship_app/model/DataPerusahaanAktif.dart';

// ignore: must_be_immutable
class DetailScreen extends StatelessWidget {
  final DataPerusahaanAktif actComp;

  DetailScreen({required this.actComp});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internship app',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:  Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Text(actComp.nama),
          ),
        ),
      ),
    );
  }
}
