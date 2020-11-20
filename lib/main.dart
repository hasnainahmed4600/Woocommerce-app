import 'package:diinsel/ui/splash.dart';
import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/screen_util.dart';
import 'package:diinsel/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'app/locator.dart';

void main() {

  configure();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          cursorColor: MyColors.gradientStart,
          accentColor : MyColors.gradientStart
      ),
      home: LayoutBuilder(
        builder: (context, constraints) {
          return OrientationBuilder(
            builder: (context, orientation) {
              ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
              ScreenUtil.instance = ScreenUtil(
                  width: MediaQuery.of(context).size.width.round(),
                  height: MediaQuery.of(context).size.height.round(),
                  allowFontScaling: true);
              SizeConfig().init(constraints, orientation);
              return Splash();
            },
          );
        },
      ),
    );
  }
}