import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/widgets/purple_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'card_registration.dart';
class TransactionSuccessful extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 5.8.toWidth(),top: (2.33.toHeight() + 10.toImage() + 4.2.toHeight())),
                child: Text('Transacción\nExitosa',style: TextStyleUtils().darkBigSemiBold,)),
            SizedBox(height: 7.2.toHeight(),),
            Image.asset(ImageUtils.transactionSuccessful,width: 55.toImage(),height: 55.toImage(),),
            SizedBox(height: 2.5.toHeight(),),
            Container(
                alignment: Alignment.topCenter,
                child: Text('Usted ha Tranferido\n\$12,000 MXN su Cuenta BBVA ',
                  style: TextStyleUtils().darkMediumSemiBold4,textAlign: TextAlign.center,)),
            SizedBox(height: 1.5.toHeight(),),
            Container(
                alignment: Alignment.topCenter,
                child: Text('Tu felicidad es nuestro placer',
                  style: TextStyleUtils().greySmallRegular1,textAlign: TextAlign.center,)),
            PurpleButton(
              horizontalMargin: 5.8.toWidth(),
              topMargin: 7.5.toHeight(),
              onButtonPressed: (){
                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: CardRegistration() ));
              },
              textStyle: TextStyleUtils().buttonTextStyle,
              isBusy: false,
              buttonText: 'Aceptar',

            )
          ],
        ),
      ),
    );
  }
}
