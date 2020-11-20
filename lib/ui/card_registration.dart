

import 'package:diinsel/ui/transaction_successful.dart';
import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/widgets/back_button.dart';
import 'package:diinsel/widgets/purple_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:page_transition/page_transition.dart';

class CardRegistration extends StatelessWidget {
  var expiryMaskFormatter = new MaskTextInputFormatter(mask: '##/##', filter: { "#": RegExp(r'[0-9]') });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: GestureDetector(
        onTap: (){
          context.unFocus();
        },
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
                  child: Text('Alta de la\nTarjeta',style: TextStyleUtils().darkBigSemiBold,)),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 5.8.toWidth(),top: 2.5.toHeight()),
                        child: Text('Información',style: TextStyleUtils().greySmallMedium3,),),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 5.8.toWidth(),right: 5.8.toWidth(),top: 2.8.toHeight()),
                        child: TextField(
                          keyboardType: TextInputType.number,
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
                              hintText: 'Numero de la tarjeta de identificacion',
                              hintStyle: TextStyleUtils().hintTextStyle
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 5.8.toWidth(),right: 5.8.toWidth(),top: 2.toHeight()),
                        child: TextField(
                          keyboardType: TextInputType.text,
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
                              hintText: 'País',
                              hintStyle: TextStyleUtils().hintTextStyle
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.8.toWidth(),right: 5.8.toWidth(),top: 2.toHeight()),
                        child: Stack(
                          children: [
                            TextField(
                              keyboardType: TextInputType.number,
                              maxLines: 1,
                              inputFormatters: [expiryMaskFormatter],
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
                                  hintText: 'MM/AA',
                                  hintStyle: TextStyleUtils().hintTextStyle
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                onPressed: null,
                                icon: Image.asset(ImageUtils.calenderIcon,width: 5.toImage(),height: 5.toImage(),),
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 5.8.toWidth(),top: 4.5.toHeight()),
                        child: Text('Foto del documento de identidad',style: TextStyleUtils().greySmallMedium3,),),
                      SizedBox(height: 3.8.toHeight(),),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.8.toWidth()),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 23.toHeight(),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(3.toImage()),
                                    boxShadow: [ BoxShadow(
                                        color: Colors.black.withOpacity(.15),
                                        blurRadius: 2.5.toImage(),
                                        offset: Offset(2,0)
                                    )
                                    ]
                                ),
                                child: Stack(
                                  children: [
                                    Align(alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 4.3.toHeight(),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.rectangle,
                                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(3.toImage()),bottomLeft: Radius.circular(3.toImage())),
                                            boxShadow: [ BoxShadow(color: Colors.black.withOpacity(.15), blurRadius: 2.5.toImage(), offset: Offset(0,-3)
                                            )
                                            ]
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.only(left: 7.toWidth(),top: 1.toHeight()),
                                          child: Text(
                                            'Galeria',style: TextStyleUtils().greySmallRegular4,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 4.3.toHeight()),
                                        child: Image.asset(ImageUtils.cameraIcon,width: 9.toImage(),height: 9.toImage(),),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 6.5.toHeight()),
                                        child: Text('Frente',style: TextStyleUtils().darkMediumSemiBold1,),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 4.toWidth(),),
                            Expanded(
                              child: Container(
                                height: 23.toHeight(),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(3.toImage()),
                                    boxShadow: [ BoxShadow(
                                        color: Colors.black.withOpacity(.15),
                                        blurRadius: 2.5.toImage(),
                                        offset: Offset(2,0)
                                    )
                                    ]
                                ),
                                child: Stack(
                                  children: [
                                    Align(alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 4.3.toHeight(),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.rectangle,
                                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(3.toImage()),bottomLeft: Radius.circular(3.toImage())),
                                            boxShadow: [ BoxShadow(color: Colors.black.withOpacity(.15), blurRadius: 2.5.toImage(), offset: Offset(0,-3)
                                            )
                                            ]
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.only(left: 7.toWidth(),top: 1.toHeight()),
                                          child: Text(
                                            'Galeria',style: TextStyleUtils().greySmallRegular4,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 4.3.toHeight()),
                                        child: Image.asset(ImageUtils.cameraIcon,width: 9.toImage(),height: 9.toImage(),),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 6.5.toHeight()),
                                        child: Text('atrás',style: TextStyleUtils().darkMediumSemiBold1,),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 3.8.toHeight(),),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(ImageUtils.shieldIcon,width: 6.5.toImage(),height: 6.5.toImage(),),
                          SizedBox(width: .5.toWidth(),),
                          Text('Su información personal esta segura',style: TextStyleUtils().greySmallRegular3,)
                        ],
                      ),
                      PurpleButton(buttonText: 'Enviar',
                        horizontalMargin: 5.8.toWidth(),
                        topMargin: 4.toHeight(),
                        onButtonPressed: (){
                          // Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  Login()));
                        },
                        textStyle: TextStyleUtils().buttonTextStyle,
                        isBusy: false,
                      ),
                      SizedBox(height: 3.toHeight(),),
                    ],
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
