import 'package:diinsel/ui/transfer_to_wallet.dart';
import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/gradient_utils.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/widgets/back_button.dart';
import 'package:diinsel/widgets/my_divider.dart';
import 'package:diinsel/widgets/purple_button.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


class TransferToAccount extends StatelessWidget {
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
                  child: Text('Transferir\na cuenta',style: TextStyleUtils().darkBigSemiBold,)),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 5.8.toWidth(),top: 1.toHeight()),
                          child: Text('Cambia tus puntos Diinsel por dinero en\nefectivo.',style: TextStyleUtils().greySmallRegular1,)),
                      Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 5.8.toWidth(),top: 4.toHeight()),
                          child: Text('Elige tu SuperWallet',style: TextStyleUtils().greySmallMedium,)),
                      Container(
                        height: 8.5.toHeight(),
                        margin: EdgeInsets.only(top: 2.5.toHeight(),left: 5.8.toWidth(),right: 5.8.toWidth()),
                        padding: EdgeInsets.symmetric(horizontal: 3.5.toWidth()),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3.toImage()),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(.15),
                                  blurRadius: 2.5.toImage(),
                                  offset: Offset(2,4)
                              )
                            ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('SuperWallet corporativa',style: TextStyleUtils().hintTextStyle,),
                            Image.asset(ImageUtils.rightArrow,width: 3.2.toImage(),height: 3.2.toImage(),)
                          ],
                        ),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 5.8.toWidth(),top: 4.toHeight()),
                          child: Text('Información',style: TextStyleUtils().greySmallMedium,)),
                      Container(
                        height: 8.5.toHeight(),
                        margin: EdgeInsets.only(top: 2.5.toHeight(),left: 5.8.toWidth(),right: 5.8.toWidth()),
                        padding: EdgeInsets.symmetric(horizontal: 3.5.toWidth()),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3.toImage()),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(.15),
                                  blurRadius: 2.5.toImage(),
                                  offset: Offset(2,4)
                              )
                            ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Banco',style: TextStyleUtils().hintTextStyle,),
                            Image.asset(ImageUtils.rightArrow,width: 3.2.toImage(),height: 3.2.toImage(),)
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 5.8.toWidth(),right: 5.8.toWidth(),top: 2.toHeight()),
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
                              hintText: 'Número de cuenta',
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
                              hintText: 'Titular de la cuenta',
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
                              hintText: 'Referencia',
                              hintStyle: TextStyleUtils().hintTextStyle
                          ),
                        ),
                      ),
                      PurpleButton(
                        buttonText: 'Seguir',
                        horizontalMargin: 5.8.toWidth(),
                        topMargin: 6.toHeight(),
                        onButtonPressed: () async{
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  TransferToWallet()));
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
      ),
    );
  }
}
