
import 'dart:ui';

import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class StatusBarUtils {
  static Future setStatusBarColor(Color color,bool whiteForeground) async{
    await FlutterStatusbarcolor.setStatusBarColor(color,animate: true);
    if(whiteForeground){
      await FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
    }else{
      await FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    }
  }
}