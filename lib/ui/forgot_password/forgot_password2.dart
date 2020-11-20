
import 'package:diinsel/ui/authentication/change_password.dart';
import 'package:diinsel/ui/settings.dart';
import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/gradient_utils.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/widgets/back_button.dart';
import 'package:diinsel/widgets/purple_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


class ForgotPassword2 extends StatefulWidget {
  @override
  _ForgotPassword2State createState() => _ForgotPassword2State();
}

class _ForgotPassword2State extends State<ForgotPassword2> {
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

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
                      margin: EdgeInsets.only(left: 5.8.toWidth(),right: 5.8.toWidth(),top: 2.toHeight()),
                      child: Stack(
                        children: [
                          TextField(
                            keyboardType: TextInputType.text,
                            maxLines: 1,
                            obscureText: !isPasswordVisible,
                            style: TextStyleUtils().textFieldStyle,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(right: 10.toWidth()),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                                ),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                                ),
                                hintText: 'Nueva contraseña',
                                hintStyle: TextStyleUtils().hintTextStyle
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  isPasswordVisible = !isPasswordVisible;
                                });
                              },
                              icon: Image.asset(!isPasswordVisible? ImageUtils.eyeDisabled : ImageUtils.eyeEnabled ,width: 4.9.toImage(),height: 4.9.toImage(),),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 5.8.toWidth(),right: 5.8.toWidth(),top: 2.toHeight()),
                      child: Stack(
                        children: [
                          TextField(
                            keyboardType: TextInputType.text,
                            maxLines: 1,
                            obscureText: !isConfirmPasswordVisible,
                            style: TextStyleUtils().textFieldStyle,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(right: 10.toWidth()),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                                ),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                                ),
                                hintText: 'Confirmar nueva contraseña',
                                hintStyle: TextStyleUtils().hintTextStyle
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  isConfirmPasswordVisible = !isConfirmPasswordVisible;
                                });
                              },
                              icon: Image.asset(!isConfirmPasswordVisible? ImageUtils.eyeDisabled : ImageUtils.eyeEnabled ,width: 4.9.toImage(),height: 4.9.toImage(),),
                            ),
                          ),
                        ],
                      ),
                    ),
                    PurpleButton(
                      buttonText: 'Seguir',
                      horizontalMargin: 5.8.toWidth(),
                      topMargin: 12.5.toHeight(),
                      onButtonPressed: () async{
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
