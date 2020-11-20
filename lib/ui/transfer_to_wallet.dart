import 'package:diinsel/ui/transaction_successful.dart';
import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/widgets/back_button.dart';
import 'package:diinsel/widgets/purple_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';



class TransferToWallet extends StatelessWidget {
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
                child: Text('Transferir\na cuenta',style: TextStyleUtils().darkBigSemiBold,)),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 1.3.toHeight(),left: 2.toWidth(),right: 2.toWidth()),
                        child: Stack(
                          children: [
                            Image.asset(ImageUtils.receptBg,width: double.infinity,),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                child: Column(
                                  children: [
                                    SizedBox(height: 4.5.toHeight(),),
                                    Text('RECIBO',style: TextStyleUtils().darkMediumSemiBold3,),
                                    Text('9:00 PM 28/10/2020',style: TextStyleUtils().hintTextStyle,),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(3.toImage()),bottomRight: Radius.circular(3.toImage())),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(.15),
                                          blurRadius: 2.5.toImage(),
                                          offset: Offset(2,4)
                                      )
                                    ]
                                ),
                                padding: EdgeInsets.only(left: 11.toWidth(),right: 6.toWidth()),
                                margin: EdgeInsets.only(top: 17.toHeight(),right: 2.5.toWidth(),left: 2.5.toWidth()),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 1.toHeight(),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Desde',style: TextStyleUtils().hintTextStyle,),
                                        Text('SupperWallet',style: TextStyleUtils().greySmallMedium3,),
                                      ],),
                                    SizedBox(height: 2.toHeight(),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('A',style: TextStyleUtils().hintTextStyle,),
                                        Text('Daniel Olivares',style: TextStyleUtils().greySmallMedium3,),
                                      ],),
                                    SizedBox(height: 2.toHeight(),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Código SWIFT',style: TextStyleUtils().hintTextStyle,),
                                        Text('BBVAMX17',style: TextStyleUtils().greySmallMedium3,),
                                      ],),
                                    SizedBox(height: 2.toHeight(),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Banco',style: TextStyleUtils().hintTextStyle,),
                                        Text('Bancomer',style: TextStyleUtils().greySmallMedium3,),
                                      ],),
                                    SizedBox(height: 2.toHeight(),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Número de cuenta',style: TextStyleUtils().hintTextStyle,),
                                        Text('80988748333',style: TextStyleUtils().greySmallMedium3,),
                                      ],),
                                    SizedBox(height: 2.toHeight(),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Titular de la cuenta',style: TextStyleUtils().hintTextStyle,),
                                        Text('3Genios',style: TextStyleUtils().greySmallMedium3,),
                                      ],),
                                    SizedBox(height: 2.toHeight(),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Saldo',style: TextStyleUtils().hintTextStyle,),
                                        Text('\$12,000',style: TextStyleUtils().greySmallMedium3,),
                                      ],),
                                    SizedBox(height: 2.toHeight(),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Transferencia',style: TextStyleUtils().hintTextStyle,),
                                        Text('\$12,000',style: TextStyleUtils().greySmallMedium3,),
                                      ],),
                                    SizedBox(height: 2.toHeight(),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Referencia',style: TextStyleUtils().hintTextStyle,),
                                        Text('Diinsel',style: TextStyleUtils().greySmallMedium3,),
                                      ],),
                                    SizedBox(height: 3.toHeight(),),
                                    Container(
                                      height: .7,
                                      color: MyColors.grey4,
                                    ),
                                    SizedBox(height: 3.toHeight(),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('TOTAL',style: TextStyleUtils().hintTextStyle,),
                                        Text('\$12,000',style: TextStyleUtils().greySmallMedium3,),
                                      ],),
                                    SizedBox(height: 1.1.toHeight(),),
                                    Text('#28193032',style: TextStyleUtils().hintTextStyle,),
                                    SizedBox(height: 1.1.toHeight(),),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 2.toHeight(),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(3.toImage()),topLeft: Radius.circular(3.toImage())),
                                  color: Colors.white,
                                ),
                                margin: EdgeInsets.only(top: 16.toHeight(),right: 3.toWidth(),left: 3.7.toWidth()),
                              ),
                            ),
                          ],
                        )
                    ),
                    PurpleButton(
                      buttonText: 'Seguir',
                      horizontalMargin: 5.8.toWidth(),
                      topMargin: 2.5.toHeight(),
                      onButtonPressed: () async{
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  TransactionSuccessful()));
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
    );
  }
}
