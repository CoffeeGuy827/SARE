import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sare/constants/Colors.dart';
import 'package:sare/constants/Sizes.dart';
import 'package:sare/constants/SvgImages.dart';
import 'package:sare/screen/SettingScreen.dart';
import 'package:sare/utils/Dialog.dart';
import 'package:sare/utils/EventCard.dart';

import '../constants/Colors.dart';
import 'MainScreen.dart';

class EventScreen extends StatefulWidget {
  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
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
                      "김남석님에게",
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
                      width: size.width * (gap_20 / 360),
                    ),
                    Text(
                      "현재 발행된",
                      style: TextStyle(
                          fontSize: size.width * (18 / 360),
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * (20 / 360),
                    ),
                    Text(
                      "3장의 쿠폰이\n있습니다",
                      style: TextStyle(
                          fontSize: size.width * (32 / 360),
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      Event1,
                      width: size.width * (106 / 360),
                    ),
                    SizedBox(
                      width: size.width * (27 / 360),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * (61 / 640),
                ),
                EventCard(context,"요기요",Yogiyo,"20,000원 할인권","마일리지를 활요하여 첫 주문시\n20,000원 혜택"),
                SizedBox(
                  height: size.height * (50 / 640),
                ),
                EventCard(context,"캐시워크",CashWalk,"2배 적립 쿠폰","1시간동안\n캐시워크에서 2배 적립 가능"),
                SizedBox(
                  height: size.height * (50 / 640),
                ),
                EventCard(context,"마켓컬리",MarketKurly,"2배 할인 쿠폰","오늘 주문은\n모두 무료배송"),
                SizedBox(
                  height: size.height * (129 / 640),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
