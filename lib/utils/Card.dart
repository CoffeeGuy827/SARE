import 'package:flutter/material.dart';
import 'package:sare/constants/Colors.dart';
import 'package:sare/constants/Sizes.dart';

Column Card1(String title) {
  return Column(
    children: [
      Container(
        width: size.width * (320 / 360),
        height: size.height * (200 / 640),
        decoration: BoxDecoration(
            borderRadius: new BorderRadius.circular(4),
            color: primaryColor),
        child: Column(
          children: [
            SizedBox(
              height: size.height * (33 / 640),
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: size.width * (24 / 360),
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * (23 / 640),
            ),
            Row(
              children: [
                Spacer(),
                Column(
                  children: [
                    Text(
                      "평일",
                      style: TextStyle(
                          fontSize: size.width * (13 / 360),
                          color: Color.fromRGBO(0,0,0,0.6),
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "8시간",
                      style: TextStyle(
                          fontSize: size.width * (22 / 360),
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  width: size.width*(1/360),
                  height: size.height*(50/640),
                  color: grayColor,
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      "주말",
                      style: TextStyle(
                          fontSize: size.width * (13 / 360),
                          color: Color.fromRGBO(0,0,0,0.6),
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "2시간",
                      style: TextStyle(
                          fontSize: size.width * (22 / 360),
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "1/9",
                  style: TextStyle(
                      fontSize: size.width * (13 / 360),
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: size.width * (10/360),
                ),
              ],
            ),
            SizedBox(
              height: size.height * (6 / 640),
            ),

          ],
        ),
      ),
      SizedBox(
        height: size.height * (8 / 640),
      ),
      Container(
        width: size.width * (320/360),
        height: size.height*(4/640),
        child:
        Row(
          children: [
            Container(
              width: size.width * (196/360),
              height: size.height*(4/640),
              color: grayColor,
            ),
            Container(
              width: size.width * (124/360),
              height: size.height*(4/640),
              color: Color(0xffcccccc),
            ),
          ],
        ),
      ),
    ],
  );
}

Column Card2(String title) {
  return Column(
    children: [
      Container(
        width: size.width * (320 / 360),
        height: size.height * (200 / 640),
        decoration: BoxDecoration(
            borderRadius: new BorderRadius.circular(4),
            color: primaryColor),
        child: Column(
          children: [
            SizedBox(
              height: size.height * (33 / 640),
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: size.width * (24 / 360),
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * (23 / 640),
            ),
            Column(
              children: [
                Text(
                  "평일",
                  style: TextStyle(
                      fontSize: size.width * (13 / 360),
                      color: Color.fromRGBO(0,0,0,0.6),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "8시간",
                  style: TextStyle(
                      fontSize: size.width * (22 / 360),
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "2/3",
                  style: TextStyle(
                      fontSize: size.width * (13 / 360),
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: size.width * (10/360),
                ),
              ],
            ),
            SizedBox(
              height: size.height * (6 / 640),
            ),

          ],
        ),
      ),
      SizedBox(
        height: size.height * (8 / 640),
      ),
      Container(
        width: size.width * (320/360),
        height: size.height*(4/640),
        child:
        Row(
          children: [
            Container(
              width: size.width * (196/360),
              height: size.height*(4/640),
              color: grayColor,
            ),
            Container(
              width: size.width * (124/360),
              height: size.height*(4/640),
              color: Color(0xffcccccc),
            ),
          ],
        ),
      ),
    ],
  );
}