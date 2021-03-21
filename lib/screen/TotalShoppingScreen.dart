import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sare/constants/Colors.dart';
import 'package:sare/constants/Sizes.dart';
import 'package:sare/constants/SvgImages.dart';
import 'package:sare/screen/SettingScreen.dart';
import 'package:sare/utils/Dialog.dart';

class TotalShoppingScreen extends StatefulWidget {
  @override
  _TotalShoppingScreenState createState() => _TotalShoppingScreenState();
}

class _TotalShoppingScreenState extends State<TotalShoppingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          '통합쇼핑으로 통합캐시를 누려라',
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
                                "김남석님의 통합캐시",
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
                              Text(
                                "적립 내역 확인  >",
                                style: TextStyle(
                                    fontSize: size.width * (13 / 360),
                                    color: grayColor,
                                    fontWeight: FontWeight.w500),
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
                      height: size.height * (8 / 640),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: (){
                              OkDialog(context, "서비스 준비중입니다", "빠른시일내에 찾아뵙겠습니다");
                            },
                            child: Container(
                              width: size.width * (156 / 360),
                              height: size.height * (156 / 540),
                              color: primaryColor,
                              child: Center(
                                child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      TotalShopping1,
                                      width: size.width*(60/360),
                                    ),
                                    SizedBox(height: size.height*(10/640),),
                                    Text("현금교환",style: TextStyle(fontSize: size.width*(16/360),fontWeight: FontWeight.bold),)
                                  ],
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
                              OkDialog(context, "서비스 준비중입니다", "빠른시일내에 찾아뵙겠습니다");
                            },
                            child: Container(
                              width: size.width * (156 / 360),
                              height: size.height * (156 / 540),
                              color: primaryColor,
                              child: Center(
                                child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      TotalShopping2,
                                      width: size.width*(60/360),
                                    ),
                                    SizedBox(height: size.height*(10/640),),
                                    Text("Google 기프트",style: TextStyle(fontSize: size.width*(16/360),fontWeight: FontWeight.bold),)
                                  ],
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
                        InkWell(
                          onTap: (){
                            OkDialog(context, "서비스 준비중입니다", "빠른시일내에 찾아뵙겠습니다");
                          },
                          child:  Container(
                            width: size.width * (156 / 360),
                            height: size.height * (156 / 540),
                            color: primaryColor,
                            child: Center(
                              child:  Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    TotalShopping3,
                                    width: size.width*(60/360),
                                  ),
                                  SizedBox(height: size.height*(10/640),),
                                  Text("편의점",style: TextStyle(fontSize: size.width*(16/360),fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width * (8 / 360),
                        ),
                        InkWell(
                          onTap: (){
                            OkDialog(context, "서비스 준비중입니다", "빠른시일내에 찾아뵙겠습니다");
                          },
                          child:  Container(
                            width: size.width * (156 / 360),
                            height: size.height * (156 / 540),
                            color: primaryColor,
                            child: Center(
                              child:  Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    TotalShopping4,
                                    width: size.width*(60/360),
                                  ),
                                  SizedBox(height: size.height*(10/640),),
                                  Text("외식",style: TextStyle(fontSize: size.width*(16/360),fontWeight: FontWeight.bold),)
                                ],
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
                        InkWell(
                          onTap: (){
                            OkDialog(context, "서비스 준비중입니다", "빠른시일내에 찾아뵙겠습니다");
                          },
                          child: Container(
                            width: size.width * (156 / 360),
                            height: size.height * (156 / 540),
                            color: primaryColor,
                            child: Center(
                              child:  Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    TotalShopping5,
                                    width: size.width*(60/360),
                                  ),
                                  SizedBox(height: size.height*(10/640),),
                                  Text("기프티콘",style: TextStyle(fontSize: size.width*(16/360),fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width * (8 / 360),
                        ),
                        InkWell(
                          onTap: (){
                            OkDialog(context, "서비스 준비중입니다", "빠른시일내에 찾아뵙겠습니다");
                          },
                          child:  Container(
                            width: size.width * (156 / 360),
                            height: size.height * (156 / 540),
                            color: primaryColor,
                            child: Center(
                              child:  Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    TotalShopping6,
                                    width: size.width*(60/360),
                                  ),
                                  SizedBox(height: size.height*(10/640),),
                                  Text("웹툰",style: TextStyle(fontSize: size.width*(16/360),fontWeight: FontWeight.bold),)
                                ],
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
    );
  }
}
