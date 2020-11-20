

import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/widgets/back_button.dart';
import 'package:diinsel/widgets/purple_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
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

                    child: Text('Cambio\ncontraseña',style: TextStyleUtils().darkBigSemiBold,)),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 5.8.toWidth(),right: 5.8.toWidth(),top: 6.toHeight()),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    maxLines: 1,
                    style: TextStyleUtils().textFieldStyle,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                        ),
                        hintText: 'Contraseña actual',
                        hintStyle: TextStyleUtils().hintTextStyle
                    ),
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
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: PurpleButton(
                bottomMargin: 9.8.toHeight(),horizontalMargin: 5.8.toWidth(),
                buttonText: 'Guardar',textStyle: TextStyleUtils().buttonTextStyle,
                isBusy: false,),
            )
          ],
        ),
      ),
    );
  }
}
