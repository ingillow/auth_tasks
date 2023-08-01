import 'package:flutter/foundation.dart';

class Platforms {
   double? cardWidth;
   double? cardHeight;
   double? cardLoginWidth;
   double? cardLoginHeight;
   double? buttonSizeW;
   double? buttonSizeH;
   double? buttonEdges;


  backgroundImage() {
    if (kIsWeb) {
      cardWidth = 1602;
      cardHeight = 883;
    } else if (defaultTargetPlatform == TargetPlatform.windows) {
      cardWidth = 1366;
      cardHeight = 720;
    } else {
      cardWidth = 413;
      cardHeight = 852;
    }
  }

  loginCard() {
    if (kIsWeb) {
      cardLoginWidth = 472;
      cardLoginHeight = 592;
    } else if (defaultTargetPlatform == TargetPlatform.windows) {
      cardLoginWidth = 468;
      cardLoginHeight = 592;
    } else {
      cardLoginWidth = 380;
      cardLoginHeight = 586;
    }
  }

  buttonSubmit() {
    if (kIsWeb) {
      buttonEdges = 30.0;
      buttonSizeW = 412;
      buttonSizeH = 50;
    } else if (defaultTargetPlatform == TargetPlatform.windows) {
      buttonEdges = 30.0;
      buttonSizeW = 408;
      buttonSizeH = 50;
    } else {
      buttonEdges = 28.0;
      buttonSizeW = 324;
      buttonSizeH = 49;
    }
  }
}
