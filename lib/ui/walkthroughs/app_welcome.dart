
import 'package:diinsel/ui/walkthroughs/indicators.dart';
import 'package:diinsel/ui/walkthroughs/walkthrough_main.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/status_bar_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/widgets/purple_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

class AppWelcome extends StatefulWidget {
  @override
  _AppWelcomeState createState() => _AppWelcomeState();
}

class _AppWelcomeState extends State<AppWelcome> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    StatusBarUtils.setStatusBarColor(Colors.transparent, true);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
        child: Stack(
          children: [
            Image.asset(ImageUtils.welcomeBg,width: double.infinity,fit: BoxFit.fill,),
            Align(
              alignment: Alignment.bottomCenter,
              child: PurpleButton(
                buttonText: 'Empezar',
                horizontalMargin: 5.8.toWidth(),
                bottomMargin: 6.toHeight(),
                onButtonPressed: () async{
                  StatusBarUtils.setStatusBarColor(Colors.transparent, true);
                  await Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  WalkThroughMain()));
                  await StatusBarUtils.setStatusBarColor(Colors.transparent, true);
                },
                textStyle: TextStyleUtils().buttonTextStyle,
                isBusy: false,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(top: 21.toHeight(),left: 5.8.toWidth()),
                child: Text.rich(TextSpan(
                    children: [TextSpan(
                        text: 'Bienvenido\n',
                        style: TextStyleUtils().whiteBigSemiBold
                    ),TextSpan(
                        text: 'Apreciable Cliente',
                        style: TextStyleUtils().whiteSmallMedium
                    )]
                ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.only(bottom: 34.toHeight(),left: 5.8.toWidth()),
                child: Text(
                  'Dínamismo y\nTransformación Digital\npara ti.',
                  style: TextStyleUtils().darkRegular,
                )
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
