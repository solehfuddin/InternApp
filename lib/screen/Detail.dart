import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_app/model/DataPerusahaanAktif.dart';
import 'package:internship_app/widget/WidgetAppbar.dart';
import 'package:internship_app/widget/WidgetDetailContent.dart';
import 'package:internship_app/widget/WidgetDetailHeader.dart';
import 'package:internship_app/widget/WidgetDynamicButton.dart';

// ignore: must_be_immutable
class DetailScreen extends StatelessWidget {
  final DataPerusahaanAktif actComp;

  DetailScreen({required this.actComp});

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WidgetAppbar(
                onPressed: () {
                  Navigator.pop(context);
                },
                title: '',
              ),
              WidgetDetailHeader(
                logo: actComp.logo,
                bagian: actComp.bagian,
                durasi: actComp.durasi,
                lokasi: actComp.lokasi,
              ),
              WidgetDetailContent(
                title: 'Persyaratan : ',
                list: actComp.persyaratan,
              ),
              WidgetDetailContent(
                title: 'Benefit : ',
                list: actComp.benefit,
              ),
              WidgetDynamicButton(
                outerPadding: 15,
                innerPadding: 8,
                fontSize: 14,
                borderRadius: 20,
                title: 'Ajukan Magang',
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
                fontColor: Colors.white,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text("Berhasil mengajukan magang"),
                        );
                      });
                },
                borderColor: Color(0xff35466A),
                bgColor: Color(0xff35466A),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
