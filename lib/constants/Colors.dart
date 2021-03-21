import 'package:flutter/material.dart';

Color primaryColor = Color(0xffFFD200);
Color grayColor = Color(0xff666666);


Color hexToColor(String code) {
  //int.parse : 문자열을 정수로 파싱
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0x0FFFFFFF),
    100: const Color(0x1FFFFFFF),
    200: const Color(0x2FFFFFFF),
    300: const Color(0x3FFFFFFF),
    400: const Color(0x4FFFFFFF),
    500: const Color(0x5FFFFFFF),
    600: const Color(0x6FFFFFFF),
    700: const Color(0x7FFFFFFF),
    800: const Color(0x8FFFFFFF),
    900: const Color(0x9FFFFFFF),
  },
);