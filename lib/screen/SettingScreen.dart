import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:sare/constants/function.dart';
import 'package:sare/provider/NavigationNumProvider.dart';
import 'package:sare/screen/BottomNavigationScreen.dart';
import 'package:sare/utils/Dialog.dart';

import '../constants/Colors.dart';
import '../constants/Colors.dart';
import '../constants/Colors.dart';
import '../constants/Colors.dart';
import '../constants/Colors.dart';
import '../constants/Colors.dart';
import '../constants/Colors.dart';
import '../constants/Colors.dart';
import '../constants/Sizes.dart';
import '../constants/SvgImages.dart';
import '../constants/SvgImages.dart';
import '../constants/SvgImages.dart';
import 'EventScreen.dart';
import 'MainScreen.dart';
import 'MainScreen.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool runApp = false;
  bool vibration = false;
  bool volumn = false;

  @override
  Widget build(BuildContext context) {
    final navigationNumProvider = Provider.of<NavigationNumProvider>(context);
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: screenWidth*(20/360)),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight*(37/640),),
                Row(
                  children: [
                    Text(
                      '설정',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth*(24/360),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    GestureDetector(
                      onTap: (){
                        navigationNumProvider.setNum(navigationNumProvider.getPastNum());
                        setState(() {

                        });
                      },
                      child: SvgPicture.asset(
                        X,
                        height: screenWidth*(22/360),
                        width: screenWidth*(22/360),
                      ),
                    )
                  ],
                ),
                SizedBox(height: screenHeight*(7/640),),
                GreyDivider(screenWidth),
                SizedBox(height: screenHeight*(36/640),),
                Row(
                  children: [
                    SvgPicture.asset(
                      AppLogoImg,
                      height: screenWidth*(96/360),
                      width: screenWidth*(96/360),
                    ),
                    SizedBox(width: screenWidth*(16/360),),
                    Container(
                      height: screenWidth*(96/360),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '현재버전 2020.04',
                            style: TextStyle(
                              fontSize: screenWidth*(13/360),
                              color: hexToColor('#666666'),
                            ),
                          ),
                          HeightPaddingUsingSizedBox(screenHeight,3),
                          Text(
                            '최신버전 2021.08',
                            style: TextStyle(
                              fontSize: screenWidth*(13/360),
                              color: hexToColor('#666666'),
                            ),
                          ),
                          HeightPaddingUsingSizedBox(screenHeight,36),
                          InkWell(
                            onTap: (){  OkDialog(context, "서비스 준비중입니다", "빠른시일내에 찾아뵙겠습니다");},
                            child: Text(
                              '업데이트 하러 가기 >',
                              style: TextStyle(
                                fontSize: screenWidth*(13/360),
                                color: hexToColor('#666666'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                HeightPaddingUsingSizedBox(screenHeight,46),
                Container(
                  height: screenHeight*(96/640),
                  width: screenWidth*(320/360),
                  decoration: BoxDecoration(
                    color: hexToColor('#FBFAFB'),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: screenWidth*(14/360)),
                    child: Column(
                      children: [
                        HeightPaddingUsingSizedBox(screenHeight,16),
                        Row(
                          children: [
                            SvgPicture.asset(
                              PersonImg,
                              height: screenWidth*(26/360),
                              width: screenWidth*(26/360),
                            ),
                            WidthPaddingUsingSizedBox(screenWidth, 6),
                            Text(
                              '내 가입정보',
                              style: TextStyle(
                                fontSize: screenWidth*(18/360),
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                        HeightPaddingUsingSizedBox(screenHeight,15),
                        Row(
                          children: [
                            Text(
                              'SERI1234@naver.com',
                              style: TextStyle(
                                  fontSize: screenWidth*(13/360),
                                color: hexToColor('#666666'),
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            InkWell(
                              onTap: (){  OkDialog(context, "서비스 준비중입니다", "빠른시일내에 찾아뵙겠습니다");},
                              child: Text(
                                '계정관리 >',
                                style: TextStyle(
                                  fontSize: screenWidth*(13/360),
                                  color: hexToColor('#666666'),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                HeightPaddingUsingSizedBox(screenHeight,18),
                Row(
                  children: [
                    WidthPaddingUsingSizedBox(screenWidth, 7),
                    Text(
                      '첫 화면에서 앱 실행',
                      style: TextStyle(
                        color: hexToColor('#666666'),
                        fontSize: screenWidth*(16/360),
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Switch(
                      value: runApp,
                      onChanged: (value) {
                        setState(() {
                          runApp = value;
                        });
                      },
                      activeTrackColor: hexToColor('#FFECB2'),
                      activeColor: hexToColor('#FABC00'),
                    )
                  ],
                ),
                HeightPaddingUsingSizedBox(screenHeight, 18),
                GreyDivider(screenWidth),
                HeightPaddingUsingSizedBox(screenHeight,18),
                Row(
                  children: [
                    WidthPaddingUsingSizedBox(screenWidth, 7),
                    Text(
                      '잠금 화면시 진동',
                      style: TextStyle(
                        color: hexToColor('#666666'),
                        fontSize: screenWidth*(16/360),
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Switch(
                      value: vibration,
                      onChanged: (value) {
                        setState(() {
                          vibration = value;
                        });
                      },
                      activeTrackColor: hexToColor('#FFECB2'),
                      activeColor: hexToColor('#FABC00'),
                    )
                  ],
                ),
                HeightPaddingUsingSizedBox(screenHeight, 18),
                GreyDivider(screenWidth),
                HeightPaddingUsingSizedBox(screenHeight,18),
                Row(
                  children: [
                    WidthPaddingUsingSizedBox(screenWidth, 7),
                    Text(
                      '볼륨키로 첫화면 탐색',
                      style: TextStyle(
                        color: hexToColor('#666666'),
                        fontSize: screenWidth*(16/360),
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Switch(
                      value: volumn,
                      onChanged: (value) {
                        setState(() {
                          volumn = value;
                        });
                      },
                      activeTrackColor: hexToColor('#FFECB2'),
                      activeColor: hexToColor('#FABC00'),
                    )
                  ],
                ),
                HeightPaddingUsingSizedBox(screenHeight, 18),
                GreyDivider(screenWidth),
                HeightPaddingUsingSizedBox(screenHeight, 18),
                InkWell(
                    onTap: (){  OkDialog(context, "서비스 준비중입니다", "빠른시일내에 찾아뵙겠습니다");},
                    child: GoToNext(screenWidth, screenHeight, '영상재생 설정')),
                HeightPaddingUsingSizedBox(screenHeight, 18),
                InkWell(
                    onTap: (){  OkDialog(context, "서비스 준비중입니다", "빠른시일내에 찾아뵙겠습니다");},
                    child: GoToNext(screenWidth, screenHeight, '알림 설정')),
                HeightPaddingUsingSizedBox(screenHeight, 32),
                Container(
                  height: screenHeight*(36/640),
                  width: screenWidth*(320/360),
                  decoration: BoxDecoration(
                    color: hexToColor('#FBFAFB'),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:  EdgeInsets.only(left:8.0),
                      child: Text(
                        '도움',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth*(18/360),
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
                HeightPaddingUsingSizedBox(screenHeight, 16),
                InkWell(
                    onTap: (){  OkDialog(context, "서비스 준비중입니다", "빠른시일내에 찾아뵙겠습니다");},
                    child: GoToNext(screenWidth, screenHeight, '공지사항 설정')),
                HeightPaddingUsingSizedBox(screenHeight, 14),
                InkWell(

                  onTap: (){  OkDialog(context, "서비스 준비중입니다", "빠른시일내에 찾아뵙겠습니다");},
                  child: Row(
                    children: [
                      WidthPaddingUsingSizedBox(screenWidth, 7),
                      Text(
                        'FAQ',
                        style: TextStyle(
                          color: hexToColor('#666666'),
                          fontSize: screenWidth*(16/360),
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      SvgPicture.asset(
                        GreyRightArrow,
                        width: screenWidth*(16/360),
                        height: screenWidth*(16/360),
                      )
                    ],
                  ),
                ),
                HeightPaddingUsingSizedBox(screenHeight, 74),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column GoToNext(double screenWidth, double screenHeight, String value) {
    return Column(
                children: [
                  Row(
                    children: [
                      WidthPaddingUsingSizedBox(screenWidth, 7),
                      Text(
                        value,
                        style: TextStyle(
                          color: hexToColor('#666666'),
                          fontSize: screenWidth*(16/360),
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      SvgPicture.asset(
                          GreyRightArrow,
                        width: screenWidth*(16/360),
                        height: screenWidth*(16/360),
                      )
                    ],
                  ),
                  HeightPaddingUsingSizedBox(screenHeight, 18),
                  GreyDivider(screenWidth),
                ],
              );
  }

  Container GreyDivider(double screenWidth) {
    return Container(
              height: 1,
              width: screenWidth*(320/360),
              decoration: BoxDecoration(
                color: hexToColor('#CCCCCC'),
              ),
            );
  }

}
