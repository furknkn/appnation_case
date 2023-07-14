import 'package:flutter/material.dart';
import '../constants/application_constants.dart';
import '../initial/dependecy/config.dart';

class ScreenSize {
 

  late Size screenSize;

  double getHeightPercent(double percent) {
    return screenSize.height * percent;
  }

  double getWidthPercent(double percent) {
    return screenSize.width * percent;
  }

  set setScreenSize(Size size) => screenSize = size;
}
extension DoubleExtension on double {
  

  double get px => (this/ApplicationConstants.defaultSize)*getIt<ScreenSize>().screenSize.width;
 
  double get percent => (this/100)* getIt<ScreenSize>().screenSize.width; 
  double get percentHeight => (this/100)*getIt<ScreenSize>().screenSize.height;


  
  SizedBox get widthPxBox=>SizedBox(width: px,);
  SizedBox get widthPercentBox=>SizedBox(width: percent,);

  SizedBox get heightPxBox=>SizedBox(height: px,);
  SizedBox get heightPercentBox=>SizedBox(height: percent,);
}