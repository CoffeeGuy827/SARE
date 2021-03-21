import 'dart:async';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:sare/constants/Colors.dart';
import 'package:sare/constants/Sizes.dart';
import 'package:sare/constants/SvgImages.dart';
import 'package:sare/screen/BottomNavigationScreen.dart';

import 'MainScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => BottomNavigationScreen()
      )
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if(size == null){
      size = MediaQuery
          .of(context)
          .size;
    }
    return Container(
      width: size.width,
      height: size.height,
      color: primaryColor,
      child: Center(child:
      SvgPicture.asset(
        SplashImg,
        width:size.width * (92 / 360),
        height: size.height * (167 / 640),
      ),),
    );
  }
}
