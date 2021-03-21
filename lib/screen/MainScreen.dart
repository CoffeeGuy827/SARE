import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:sare/constants/Colors.dart';
import 'package:sare/constants/Sizes.dart';
import 'package:sare/constants/SvgImages.dart';
import 'package:sare/provider/NavigationNumProvider.dart';
import 'package:sare/screen/BottomNavigationScreen.dart';
import 'package:sare/screen/CashFlowScreen.dart';
import 'package:sare/screen/MissionScreen.dart';
import 'package:sare/screen/SettingScreen.dart';
import 'package:sare/screen/TotalShoppingScreen.dart';

import '../constants/Colors.dart';
import '../constants/Colors.dart';
import '../constants/Colors.dart';
import '../constants/SvgImages.dart';
import '../utils/Dialog.dart';
import 'EventScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {

    final navigationNumProvider = Provider.of<NavigationNumProvider>(context);
    return DefaultTabController(
      length: 4,  // Added
      initialIndex: 0,
      child: Scaffold(
        body: Material(
          color: Colors.white.withOpacity(0.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
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
                        height: size.height * (4 / 640),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: size.width * (gap_20 / 360),
                          ),
                          Text(
                            '김남석님의 통합캐시',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: size.width * (font_size_18 / 360)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * (30 / 640),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: new BorderRadius.circular(4.0),
                          color: primaryColor,
                        ),
                        width: size.width * (320 / 360),
                        height: size.height * (160 / 640),
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height * (16 / 640),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: size.width * (gap_16 / 360),
                                ),
                                SvgPicture.asset(
                                  MainCardIcon,
                                  height: size.height * (16 / 640),
                                ),
                                SizedBox(
                                  height: size.height * (5 / 640),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * (5 / 640),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: size.width * (gap_16 / 360),
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
                            Row(
                              children: [
                                SizedBox(
                                  width: size.width * (gap_16 / 360),
                                ),
                                Text(
                                  "98,028  c",
                                  style: TextStyle(
                                      fontSize: size.width * (38 / 360),
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * (20 / 640),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: size.width * (gap_20 / 360),
                                ),
                                InkWell(
                                  onTap: (){  OkDialog(context, "서비스 준비중입니다", "빠른시일내에 찾아뵙겠습니다");},
                                  child: Text(
                                    "적립 내역 확인  >",
                                    style: TextStyle(
                                        fontSize: size.width * (13 / 360),
                                        color: grayColor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * (8 / 640),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: new BorderRadius.circular(4.0),
                          color: Color(0xffFBFAFB),
                        ),
                        width: size.width * (320 / 360),
                        height: size.height * (74 / 640),
                        child: Image.asset(
                            Ads1,
                            fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: size.height * (37 / 640),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){
                                Navigator.push(
                                    context, // 기본 파라미터, SecondRoute로 전달
                                    MaterialPageRoute(
                                        builder: (context) =>
                                           CashFlowScreen()) // SecondRoute를 생성하여 적재
                                );
                              },
                              child: Container(
                                width: size.width * (156 / 360),
                                height: size.height * (156 / 540),
                                child: Center(
                                  child:  SvgPicture.asset(
                                    Main1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width * (8 / 360),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){
                                navigationNumProvider.setNum(1);
                                setState(() {

                                });
                              },
                              child: Container(
                                width: size.width * (156 / 360),
                                height: size.height * (156 / 540),
                                child: Center(
                                  child:  SvgPicture.asset(
                                    Main2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * (8 / 640),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){
                                Navigator.push(
                                    context, // 기본 파라미터, SecondRoute로 전달
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MissionScreen()) // SecondRoute를 생성하여 적재
                                );
                              },
                              child: Container(
                                width: size.width * (156 / 360),
                                height: size.height * (156 / 540),
                                child: Center(
                                  child:  SvgPicture.asset(
                                    Main3,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width * (8 / 360),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){
                                navigationNumProvider.setNum(2);
                            setState(() {

                            });
                              },
                              child: Container(
                                width: size.width * (156 / 360),
                                height: size.height * (156 / 540),
                                child: Center(
                                  child:  SvgPicture.asset(
                                    Main4,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * (8 / 640),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){  OkDialog(context, "서비스 준비중입니다", "빠른시일내에 찾아뵙겠습니다");},
                              child: Container(
                                width: size.width * (156 / 360),
                                height: size.height * (156 / 540),
                                child: Center(
                                  child:  SvgPicture.asset(
                                    Main5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width * (8 / 360),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){  OkDialog(context, "서비스 준비중입니다", "빠른시일내에 찾아뵙겠습니다");},
                              child: Container(
                                width: size.width * (156 / 360),
                                height: size.height * (156 / 540),
                                child: Center(
                                  child:  SvgPicture.asset(
                                    Main6,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * (62 / 640),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
