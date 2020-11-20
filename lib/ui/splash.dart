import 'package:diinsel/ui/walkthroughs/app_welcome.dart';
import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/gradient_utils.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:diinsel/utils/status_bar_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nuts_activity_indicator/nuts_activity_indicator.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
   // StatusBarUtils.setStatusBarColor(Colors.transparent, true);
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushAndRemoveUntil(context, PageTransition(type: PageTransitionType.fade, child: AppWelcome()), (Route<dynamic> route) => false);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
      body : Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: GradientUtils.mainGradient
          ),
          child: Stack(
            children: [
              Center(
                child: Container(
                    margin: EdgeInsets.only(bottom: 18.toHeight()),
                    child: Image.asset(ImageUtils.splashLogo,width: 58.toImage(),height: 58.toImage(),)),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(bottom: 12.toHeight()),
                  child: NutsActivityIndicator(
                    radius: 20,
                    activeColor: MyColors.blueGradientStart.withOpacity(.5) ,
                    inactiveColor: Colors.white,
                    tickCount: 11,
                    startRatio: 0.55,
                    animationDuration: Duration(seconds: 1),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
