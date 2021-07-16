import 'package:flutter/material.dart';

class WidgetInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 15,
      ),
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Color(0xffEFF3FF),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 10, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Info Seminar',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w800,
                    color: Colors.red,
                    fontFamily: 'Nunito',
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Perbarui ilmu',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'seputar karir',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: Text(
                      'Ikuti Seminar',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff1EB339)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Color(0xff1EB339)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 5,
            ),
            child: Image.asset(
              'images/promo.webp',
            ),
          ),
          // Container(
          //   child: Image.asset(
          //     'images/pita.png',
          //     width: 20,
          //     height: 20,
          //     alignment: Alignment.topRight,
          //   ),
          // ),
        ],
      ),
    );
  }
}
