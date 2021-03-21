import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sare/constants/Colors.dart';
import 'package:sare/constants/Sizes.dart';
import 'package:sare/constants/SvgImages.dart';
import 'package:sare/utils/Dialog.dart';

class CashFlowScreen extends StatefulWidget {
  @override
  _CashFlowScreenState createState() => _CashFlowScreenState();
}

class _CashFlowScreenState extends State<CashFlowScreen> {
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
                Row(
                  children: [
                    SizedBox(
                      width: size.width * (gap_20 / 360),
                    ),
                    Text(
                      "총 7개의 통합 리워드 적립중",
                      style: TextStyle(
                          fontSize: size.width * (13 / 360),
                          color: grayColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      CashFlowFlower,
                      height: size.height * (127 / 640),
                    ),
                    SizedBox(
                      width: size.width * (25 / 360),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * (26 / 640),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * (20 / 360),
                    ),
                    Text(
                      "도보",
                      style: TextStyle(
                          fontSize: size.width * (22 / 360),
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * (35 / 640),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * (20 / 360),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            CashWorkPng,
                            fit: BoxFit.fill,
                            height: MediaQuery.of(context).size.width*(128/360),
                            width:  MediaQuery.of(context).size.width*(128/360),
                          ),
                          SizedBox(
                            height: size.height * (3 / 640),
                          ),
                          Text(
                            "캐시워크",
                            style: TextStyle(
                                fontSize: size.width * (16 / 360),
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "매일 최대 적립금 180원",
                            style: TextStyle(
                                fontSize: size.width * (13 / 360),
                                color: grayColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width * (12 / 360),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            CastleStepUpPng,
                            fit: BoxFit.fill,
                            height: MediaQuery.of(context).size.width*(128/360),
                            width:  MediaQuery.of(context).size.width*(128/360),
                          ),
                          SizedBox(
                            height: size.height * (3 / 640),
                          ),
                          Text(
                            "캐슬 스텝업",
                            style: TextStyle(
                                fontSize: size.width * (16 / 360),
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "매일 최대 적립금 230원",
                            style: TextStyle(
                                fontSize: size.width * (13 / 360),
                                color: grayColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width * (12 / 360),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            CashYaPng,
                            fit: BoxFit.fill,
                            height: MediaQuery.of(context).size.width*(128/360),
                            width:  MediaQuery.of(context).size.width*(128/360),
                          ),
                          SizedBox(
                            height: size.height * (3 / 640),
                          ),
                          Text(
                            "캐시야",
                            style: TextStyle(
                                fontSize: size.width * (16 / 360),
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "매일 최대 적립금 180원",
                            style: TextStyle(
                                fontSize: size.width * (13 / 360),
                                color: grayColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * (30 / 640),
                ),
                SizedBox(
                  height: size.height * (32 / 640),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * (20 / 360),
                    ),
                    Text(
                      "게임",
                      style: TextStyle(
                          fontSize: size.width * (22 / 360),
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * (20 / 360),
                    ),
                    Text(
                      "관련 리워드앱 확인하기 ",
                      style: TextStyle(
                          fontSize: size.width * (13 / 360),
                          color: grayColor,
                          fontWeight: FontWeight.w500),
                    ),
                    // Image.asset(
                    //     GreyBottomArrowPng,
                    //     height: size.width*(12/360),
                    //   width: size.width*(12/360),
                    // )
                  ],
                ),
                SizedBox(
                  height: size.height * (28 / 640),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * (20 / 360),
                    ),
                    Text(
                      "음악",
                      style: TextStyle(
                          fontSize: size.width * (22 / 360),
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * (20 / 360),
                    ),
                    Text(
                      "관련 리워드앱 확인하기 ",
                      style: TextStyle(
                          fontSize: size.width * (13 / 360),
                          color: grayColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * (28 / 640),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * (20 / 360),
                    ),
                    Text(
                      "방치",
                      style: TextStyle(
                          fontSize: size.width * (22 / 360),
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * (20 / 360),
                    ),
                    Text(
                      "관련 리워드앱 확인하기 ",
                      style: TextStyle(
                          fontSize: size.width * (13 / 360),
                          color: grayColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * (28 / 640),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * (20 / 360),
                    ),
                    Text(
                      "웹툰",
                      style: TextStyle(
                          fontSize: size.width * (22 / 360),
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * (20 / 360),
                    ),
                    Text(
                      "관련 리워드앱 확인하기 ",
                      style: TextStyle(
                          fontSize: size.width * (13 / 360),
                          color: grayColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * (28 / 640),
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
            onTap: (){
              OkDialog(context, "서비스 준비중입니다", "빠른 시일 내에 찾아뵙겠습니다");
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
