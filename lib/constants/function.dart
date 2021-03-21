import 'package:flutter/material.dart';

SizedBox HeightPaddingUsingSizedBox(double screenHeight, double value) {
  return SizedBox(
    height: screenHeight*(value/640),
  );
}
SizedBox WidthPaddingUsingSizedBox(double screenWidth, double value) {
  return SizedBox(
    width: screenWidth*(value/360),
  );
}