import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_app/model/data_perusahaan_aktif.dart';
import 'package:internship_app/widget/appbar_widget.dart';
import 'package:internship_app/widget/detail_content_widget.dart';
import 'package:internship_app/widget/detail_header_widget.dart';
import 'package:internship_app/widget/dynamic_button_widget.dart';
import 'package:internship_app/widget/favorite_button_widget.dart';

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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppbarWidget(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  title: '',
                ),
                DetailHeaderWidget(
                  logo: actComp.logo,
                  bagian: actComp.bagian,
                  durasi: actComp.durasi,
                  lokasi: actComp.lokasi,
                ),
                Center(
                  child: FavoriteButtonWidget(),
                ),
                DetailContentWidget(
                  title: 'Persyaratan : ',
                  list: actComp.persyaratan,
                ),
                DetailContentWidget(
                  title: 'Benefit : ',
                  list: actComp.benefit,
                ),
                DynamicButtonWidget(
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
      ),
    );
  }
}
