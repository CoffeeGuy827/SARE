import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sare/constants/Colors.dart';
import 'package:sare/constants/Sizes.dart';
import 'package:sare/constants/SvgImages.dart';
import 'package:sare/utils/Dialog.dart';

Column EventCard(BuildContext context,String title,String img,String content1,String content2) {
  return Column(
    children: [
      Row(
        children: [
          SizedBox(
            width: size.width * (20 / 360),
          ),
          Text(
           title,
            style: TextStyle(
                fontSize: size.width * (22 / 360),
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
      SizedBox(
        height: size.height * (6 / 640),
      ),
      Image.asset(
        img,
        fit: BoxFit.fill,
        width: size.width * (320 / 360),
      ),
      SizedBox(
        height: size.height * (6 / 640),
      ),
      Row(
        children: [
          SizedBox(
            width: size.width * (20 / 360),
          ),
          Text(
            content1,
            style: TextStyle(
                fontSize: size.width * (16 / 360),
                color: Color.fromRGBO(0, 0, 0, 0.8),
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
            content2,
            style: TextStyle(
                fontSize: size.width * (13/ 360),
                color: grayColor,
                fontWeight: FontWeight.bold),
          ),
          Spacer(),
          InkWell(
            onTap: (){
              OkDialog(context, "서비스 준비중입니다", "빠른시일내에 찾아뵙겠습니다");
            },
            child: Container(
              width: size.width*(128/360),
              height: size.height*(36/640),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: primaryColor),
              child: Center(
                child:  Text(
                  "받기",
                  style: TextStyle(
                      fontSize: size.width * (14 / 360),
                      color: Color.fromRGBO(0, 0, 0, 0.8),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            width: size.width * (20 / 360),
          ),
        ],
      ),
    ],
  );
}