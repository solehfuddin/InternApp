import 'package:flutter/material.dart';
import 'package:internship_app/model/data_perusahaan_aktif.dart';
import 'package:internship_app/model/data_perusahaan_baru.dart';
import 'package:internship_app/screen/detail_screen.dart';
import 'package:internship_app/widget/new_process_widget.dart';
import 'package:internship_app/widget/active_process_widget.dart';

import 'home_title_widget.dart';

// ignore: must_be_immutable
class HomeContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
            margin: EdgeInsets.only(top: 85),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Image.asset('images/banner.png'),
                ),
                HomeTitleWidget(
                  marginHor: 20,
                  marginVer: 10,
                  title: 'Sedang Diproses',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                Container(
                  height: 195,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final DataPerusahaanAktif activeComp =
                          dataPerusahaanAktifList[index];
                      return Padding(
                        padding: EdgeInsets.only(left: activeComp.padLeft, right: activeComp.padRight),
                        child: ActiveProcessWidget(
                          logo: activeComp.logo,
                          lokasi: activeComp.lokasi,
                          durasi: activeComp.durasi,
                          bagian: activeComp.bagian,
                          nama: activeComp.nama,
                          peminat: activeComp.peminat,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return DetailScreen(actComp: activeComp);
                            }));
                          },
                        ),
                      );
                    },
                    itemCount: dataPerusahaanAktifList.length,
                  ),
                ),
                HomeTitleWidget(
                  marginHor: 20,
                  marginVer: 10,
                  title: 'Akan Ditambahkan',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final DataPerusahaanBaru newComp =
                        dataPerusahaanBaruList[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
                      child: NewProcessWidget(
                        logo: newComp.logo,
                        lokasi: newComp.lokasi,
                        bagian: newComp.bagian,
                        nama: newComp.nama,
                      ),
                    );
                  },
                  itemCount: dataPerusahaanBaruList.length,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}