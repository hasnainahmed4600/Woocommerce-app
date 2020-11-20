
import 'package:diinsel/utils/color_utils.dart';
import 'package:flutter/cupertino.dart';

class GradientUtils {
  static LinearGradient mainGradient =  LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
  MyColors.gradientStart,MyColors.gradientEnd
  ]
  );
  static LinearGradient progressBarGrident =  LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        MyColors.blueGradientStart,MyColors.blueGradientEnd
      ]
  );
  static LinearGradient lightBlueGradient =  LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        MyColors.blueGradientStart,MyColors.blueGradientEnd
      ]
  );
  static LinearGradient gradient1 =  LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomLeft,
      colors: [
        Color(0xFF39A1F7),Color(0xFFA875FF)
      ]
  );
  static LinearGradient gradient2 =  LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF26BFBD),Color(0xFF00E1B5)
      ]
  );
  static LinearGradient gradient3 =  LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFFFAB86),Color(0xFFFFD969)
      ]
  );
  static LinearGradient gradient4 =  LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFFFAB86),Color(0xFFFFD969)
      ]
  );
}