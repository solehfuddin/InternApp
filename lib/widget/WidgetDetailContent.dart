import 'package:flutter/material.dart';
import 'package:internship_app/widget/WidgetHomeTitle.dart';
import 'package:internship_app/widget/WidgetHomeTitleWithIcon.dart';

// ignore: must_be_immutable
class WidgetDetailContent extends StatelessWidget {
  String title;
  List<String> list;

  WidgetDetailContent({
    required this.title,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color(0xffFFFBFF),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WidgetHomeTitle(
              marginHor: 10,
              marginVer: 10,
              title: title,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontColor: Colors.black87,
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final String item = list[index];
                return WidgetHomeTitleWithIcon(
                  marginHor: 10,
                  marginVer: 3,
                  iconSize: 16,
                  title: item,
                  fontFamily: 'Nunito',
                  fontweight: FontWeight.w500,
                  fontSize: 12,
                  icon: Icons.album_outlined,
                  iconColor: Color(0xff2DA83E),
                );
              },
              itemCount: list.length,
            ),
            // WidgetHomeTitleWithIcon(
            //   marginHor: 10,
            //   marginVer: 3,
            //   iconSize: 16,
            //   title: 'Persyaratan pertama',
            //   fontFamily: 'Nunito',
            //   fontweight: FontWeight.w500,
            //   fontSize: 12,
            //   icon: Icons.album_outlined,
            //   iconColor: Color(0xff2DA83E),
            // ),
            // WidgetHomeTitleWithIcon(
            //   marginHor: 10,
            //   marginVer: 3,
            //   iconSize: 16,
            //   title: 'Persyaratan kedua',
            //   fontFamily: 'Nunito',
            //   fontSize: 12,
            //   fontweight: FontWeight.w500,
            //   icon: Icons.album_outlined,
            //   iconColor: Color(0xff2DA83E),
            // ),
          ],
        ));
  }
}
