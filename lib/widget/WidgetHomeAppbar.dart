import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WidgetHomeAppbar extends StatelessWidget {
  double? padding;
  String greeting = "Selamat datang,";
  String name = "Muhamad Solehfuddin";

  final bgColor;
  final imgProfile;

  WidgetHomeAppbar(
      {this.bgColor,
      this.padding,
      this.imgProfile,
      required this.name,
      required this.greeting});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding!),
      height: 95,
      color: bgColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  imgProfile,
                  width: 40,
                  height: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 15,
                  top: 13,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      greeting,
                      style: TextStyle(
                        color: Color(0xff879DC4),
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
            ),
            child: IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {},
              iconSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
