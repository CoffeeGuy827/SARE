import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sare/constants/Colors.dart';
import 'package:sare/constants/Sizes.dart';
import 'package:sare/constants/SvgImages.dart';
import 'package:sare/utils/Dialog.dart';

class ResultScreen extends StatefulWidget {
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: Column(
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
              children: [
                SizedBox(
                  width: size.width * (20 / 360),
                ),
                Text(
                  "통합캐시 자가진단",
                  style: TextStyle(
                      fontSize: size.width * (18 / 360),
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: size.height * (48 / 640),
            ),
            SvgPicture.asset(
              Result1,
              height: size.height * (243 / 640),
            ),
            SizedBox(
              height: size.height * (43 / 640),
            ),
            Text(
              "김남석님은\n매월 해당의 금액만큼\n통합 캐시 적립이 가능하십니다",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: size.width * (18 / 360),
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            InkWell(
              onTap: (){
                OkDialog(context, "서비스 준비중입니다", "빠른시일내에 찾아뵙겠습니다");
              },
              child: Container(
                width: size.width*(320/360),
                height: size.height*(60/640),
                color: primaryColor,
                child: Center(
                  child:
                  Text(
                    "통합캐시 서비스 신청하러가기",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: size.width * (20 / 360),
                        color: Color.fromRGBO(0,0,0,0.8),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * (10/ 640),
            ),
          ],
        ),
      ),
    );
  }
}
