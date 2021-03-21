import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sare/constants/Colors.dart';
import 'package:sare/constants/Sizes.dart';
import 'package:sare/constants/SvgImages.dart';
import 'package:sare/screen/CalculatingScreen.dart';
import 'package:sare/utils/Card.dart';
import 'package:sare/utils/Dialog.dart';

class MissionScreen extends StatefulWidget {
  @override
  _MissionScreenState createState() => _MissionScreenState();
}

class _MissionScreenState extends State<MissionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Colors.white.withOpacity(0.0),
        child: Container(
          width: size.width,
          height: size.height,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: size.height * (32 / 640)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * (gap_20 / 360),
                    ),
                    SvgPicture.asset(
                      ProfileIcon,
                      height: size.height * (28 / 640),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * (16 / 640),
                ),
                SizedBox(
                  height: size.height * (3 / 640),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * (20 / 360),
                    ),
                    Text(
                      "원하시는 리워드앱을\n선택해 주세요",
                      style: TextStyle(
                          fontSize: size.width * (21 / 360),
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * (33 / 640),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * (gap_20 / 360),
                    ),
                    Container(
                      width: size.width * (150 / 360),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * (50 / 640),
                          ),
                          Text(
                            "김남석님의",
                            style: TextStyle(
                                fontSize: size.width * (13 / 360),
                                color: grayColor,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Life Cycle을\n체크해주세요",
                            style: TextStyle(
                                fontSize: size.width * (24 / 360),
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width * (44 / 360),
                    ),
                    SvgPicture.asset(
                      Mission1,
                      height: size.width * (121 / 360),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * (75 / 640),
                ),
                Card1("도보"),
                SizedBox(
                  height: size.height * (56 / 640),
                ),
                Card2("하루 핸드폰 잠금 해제"),
                SizedBox(
                  height: size.height * (56 / 640),
                ),
                Card2("방치(취침)"),
                SizedBox(
                  height: size.height * (56 / 640),
                ),
                Card1("유투브시청"),
                SizedBox(
                  height: size.height * (56 / 640),
                ),
                Card2("와이파이접속"),
                SizedBox(
                  height: size.height * (56 / 640),
                ),
                Card2("음악"),
                SizedBox(
                  height: size.height * (56 / 640),
                ),
                Card2("웹툰"),
                SizedBox(
                  height: size.height * (116 / 640),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: size.width * (360 / 360),
        height: size.height * (80 / 640),
        color: Colors.white,
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, // 기본 파라미터, SecondRoute로 전달
                  MaterialPageRoute(
                      builder: (context) =>
                          CalculatingScreen()) // SecondRoute를 생성하여 적재
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(4.0),
                  color: primaryColor),
              width: size.width * (320 / 360),
              height: size.height * (60 / 640),
              child: Center(
                child: Text(
                  "선택완료",
                  style: TextStyle(
                      fontSize: size.width * (20 / 360),
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }


}
