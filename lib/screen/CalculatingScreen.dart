import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sare/constants/Colors.dart';
import 'package:sare/constants/Sizes.dart';
import 'package:sare/constants/SvgImages.dart';

import 'ResultScreen.dart';

class CalculatingScreen extends StatefulWidget {
  @override
  _CalculatingScreenState createState() => _CalculatingScreenState();
}

class _CalculatingScreenState extends State<CalculatingScreen> {
  String loading = "loading";

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(milliseconds: 1000), () {
      loading = "loading.";
      setState(() {});
    });
    Timer(Duration(milliseconds: 2000), () {
      loading = "loading..";
      setState(() {});
    });
    Timer(Duration(milliseconds: 3000), () {
      loading = "loading...";
      setState(() {});
    });
    Timer(Duration(milliseconds: 4000), () {
      loading = "loading....";
      setState(() {});
    });
    Timer(Duration(milliseconds: 5000), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ResultScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          width: size.width,
          height: size.height,
          color: primaryColor,
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
                height: size.height * (85 / 640),
              ),
              Text(
               loading,
                style: TextStyle(
                    fontSize: size.width * (24 / 360),
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * (61 / 640),
              ),
              SvgPicture.asset(
                Calculating1,
                height: size.height * (96 / 640),
              ),
              SizedBox(
                height: size.height * (43 / 640),
              ),
              Text(
                "주어진 결과값을 통해\n김남석님의\n1달 간의 적립예상금액을\n예측하고 있습니다",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: size.width * (18 / 360),
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
