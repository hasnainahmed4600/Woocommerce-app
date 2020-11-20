
import 'package:diinsel/ui/forgot_password/forgot_password2.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/widgets/back_button.dart';
import 'package:diinsel/widgets/purple_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


class ForgotPassword1 extends StatelessWidget {
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
                child: Text('Olvidó\ncontraseña',style: TextStyleUtils().darkBigSemiBold,)),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 5.8.toWidth(),top: 2.33.toHeight(),right: 5.8.toWidth()),
                        child: Text('Ingrese el número de teléfono que usa para registrar su cuenta',style: TextStyleUtils().greySmallRegular1,)),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 5.8.toWidth(),right: 5.8.toWidth(),top: 6.8.toHeight()),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        maxLines: 1,
                        maxLength: 6,
                        style: TextStyleUtils().textFieldStyle,
                        decoration: InputDecoration(
                          counter: Container(),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                            ),
                            hintText: 'Teléfono',
                            hintStyle: TextStyleUtils().hintTextStyle
                        ),
                      ),
                    ),
                    Container(
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(left: 5.8.toWidth(),top: 2.5.toHeight(),right: 5.8.toWidth()),
                        child: InkWell(
                            onTap: (){

                            },
                            child: Text('Reenviar',style: TextStyleUtils().darkMediumMedium,))),
                    PurpleButton(
                      buttonText: 'Seguir',
                      horizontalMargin: 5.8.toWidth(),
                      topMargin: 2.5.toHeight(),
                      onButtonPressed: () async{
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  ForgotPassword2()));
                      },
                      textStyle: TextStyleUtils().buttonTextStyle,
                      isBusy: false,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
