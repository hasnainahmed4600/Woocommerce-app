import 'package:diinsel/ui/authentication/add_finger_print.dart';
import 'package:diinsel/ui/settings.dart';
import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/widgets/back_button.dart';
import 'package:diinsel/widgets/my_custom_switch.dart';
import 'package:diinsel/widgets/my_divider.dart';
import 'package:diinsel/widgets/purple_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
class FingerPrint extends StatelessWidget {
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
                child: Text('Huella dactilar',style: TextStyleUtils().darkBigSemiBold,)),
            Container(
              height: 10.68.toHeight(),
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5.8.toWidth()),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Usar para',style: TextStyleUtils().darkMediumSemiBold1,)),
            ),
            MyDivider(),
            Container(
              height: 9.2.toHeight(),
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5.8.toWidth()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Desbloquear SuperWallet',style: TextStyleUtils().darkMediumSemiBold,),
                  MyCustomSwitch()
                ],
              ),
            ),
            MyDivider(),
            Container(
              height: 9.2.toHeight(),
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5.8.toWidth()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Pago',style: TextStyleUtils().darkMediumSemiBold,),
                  MyCustomSwitch()
                ],
              ),
            ),
            MyDivider(),
            Container(
              height: 9.2.toHeight(),
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5.8.toWidth()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Huella dactilar',style: TextStyleUtils().darkMediumSemiBold1,),
                ],
              ),
            ),
            MyDivider(),
            InkWell(
              onTap: (){

              },
              child: Container(
                height: 9.2.toHeight(),
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 5.8.toWidth()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Dedo 1',style: TextStyleUtils().darkMediumSemiBold,),
                    Image.asset(ImageUtils.rightArrow,width: 3.5.toImage(),height: 3.5.toImage(),)
                  ],
                ),
              ),
            ),
            MyDivider(),
            Container(
              height: 9.2.toHeight(),
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5.8.toWidth()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Más',style: TextStyleUtils().darkMediumSemiBold1,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
