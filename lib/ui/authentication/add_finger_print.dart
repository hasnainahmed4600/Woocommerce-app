import 'package:diinsel/ui/authentication/finger_print.dart';
import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/widgets/back_button.dart';
import 'package:diinsel/widgets/my_divider.dart';
import 'package:diinsel/widgets/purple_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AddFingerPrint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: MyBackButton(
                onButtonPressed: (){Navigator.of(context).pop();},
                topMargin: 4.2.toHeight(),
                horizontalMargin: 3.2.toWidth(),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 5.8.toWidth(),top: 2.33.toHeight()),
                child: Text('Dedo 1',style: TextStyleUtils().darkBigSemiBold,)),
            Container(
              height: 10.68.toHeight(),
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5.8.toWidth()),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Saldo SuperWallet',style: TextStyleUtils().darkMediumSemiBold,)),
            ),
            MyDivider(),
            SizedBox(height: 6.5.toHeight(),),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.8.toWidth()),
              child: Text('Escanea tu huella dactilar\npara iniciar validacion Biometrica.',
                style: TextStyleUtils().darkMediumSemiBold,textAlign: TextAlign.center,),
            ),
            PurpleButton(buttonText: 'Eliminar',horizontalMargin: 5.8.toWidth(),
              bottomMargin: 6.toHeight(),
              topMargin: 4.toHeight(),
              onButtonPressed: () async{
                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  FingerPrint()));
              },
              textStyle: TextStyleUtils().buttonTextStyle,
              isBusy: false,),
            SizedBox(height: 2.toHeight(),),
            Image.asset(ImageUtils.fingerPrint,width: 19.5.toImage(),height: 19.5.toImage(),)
          ],
        ),
      ),
    );
  }
}
