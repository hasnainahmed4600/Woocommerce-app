
import 'package:diinsel/ui/authentication/change_password.dart';
import 'package:diinsel/ui/authentication/finger_print.dart';
import 'package:diinsel/ui/edit_profile.dart';
import 'package:diinsel/ui/settings.dart';
import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/gradient_utils.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/widgets/back_button.dart';
import 'package:diinsel/widgets/my_custom_switch.dart';
import 'package:diinsel/widgets/my_divider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final scrollController = ScrollController();
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
                child: Text('Ajustes',style: TextStyleUtils().darkBigSemiBold,)),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Theme(
                      data: ThemeData(
                          dividerColor: Colors.white
                      ),
                      child: ExpansionTile(
                        //  tilePadding: EdgeInsets.zero,
                        title: Container(
                          height: 9.2.toHeight(),
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 2.toWidth()),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Cuenta',style: TextStyleUtils().darkMediumSemiBold,),
                            ],
                          ),
                        ),
                        children: [
                          MyDivider(),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  EditProfile()));
                            },
                            child: Container(
                              height: 9.2.toHeight(),
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 5.8.toWidth()),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 9.toWidth()),
                                      child: Text('Editar perfil',style: TextStyleUtils().darkMediumMedium,)),
                                  Image.asset(ImageUtils.rightArrow,width: 3.5.toImage(),height: 3.5.toImage(),)
                                ],
                              ),
                            ),
                          ),
                          MyDivider(),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  ChangePassword()));
                            },
                            child: Container(
                              height: 9.2.toHeight(),
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 5.8.toWidth()),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 9.toWidth()),
                                      child: Text('Cambia la contraseña',style: TextStyleUtils().darkMediumMedium,)),
                                  Image.asset(ImageUtils.rightArrow,width: 3.5.toImage(),height: 3.5.toImage(),)
                                ],
                              ),
                            ),
                          ),
                          MyDivider(),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  FingerPrint()));
                            },
                            child: Container(
                              height: 9.2.toHeight(),
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 5.8.toWidth()),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 9.toWidth()),
                                      child: Text('Huella dactilar',style: TextStyleUtils().darkMediumMedium,)),
                                  Image.asset(ImageUtils.rightArrow,width: 3.5.toImage(),height: 3.5.toImage(),)
                                ],
                              ),
                            ),
                          ),
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
                          Container(
                              margin: EdgeInsets.only(left: 0.toWidth()),
                              child: Text('Administrar SuperWallet',style: TextStyleUtils().darkMediumSemiBold,)),
                          Image.asset(ImageUtils.rightArrow,width: 3.5.toImage(),height: 3.5.toImage(),)
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
                          Container(
                              margin: EdgeInsets.only(left: 0.toWidth()),
                              child: Text('Idioma',style: TextStyleUtils().darkMediumSemiBold,)),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Español',style: TextStyleUtils().darkMediumSemiBold2,),
                              SizedBox(width: 1.toWidth(),),
                              Image.asset(ImageUtils.rightArrow,width: 3.5.toImage(),height: 3.5.toImage(),)
                            ],
                          )
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
                          Text('Pago rápido',style: TextStyleUtils().darkMediumSemiBold,),
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
                          Text('Notificaciones',style: TextStyleUtils().darkMediumSemiBold,),
                          MyCustomSwitch()
                        ],
                      ),
                    ),
                    MyDivider(),
                    Theme(
                      data: ThemeData(
                          dividerColor: Colors.white
                      ),
                      child: ExpansionTile(
                        //  tilePadding: EdgeInsets.zero,
                        onExpansionChanged: (value) {
                          if(value){
                            Future.delayed(Duration(milliseconds: 400)).then((value){
                              scrollController.animateTo(scrollController.position.maxScrollExtent, duration: Duration(milliseconds: 400), curve: Curves.linearToEaseOut);
                            });
                          }
                        },
                        title: Container(
                          height: 9.2.toHeight(),
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 2.toWidth()),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Perfil Completado',style: TextStyleUtils().darkMediumSemiBold,),
                                  SizedBox(height: .8.toHeight(),),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('40',style: TextStyleUtils().darkBlueSemiBold,),
                                      SizedBox(width: 5.toWidth(),),
                                      Container(
                                        height: 1.05.toHeight(),
                                        width: context.screenWidth()*.58,
                                        decoration: BoxDecoration(
                                            color: MyColors.lightGrey,
                                            shape: BoxShape.rectangle,
                                            borderRadius: BorderRadius.circular(2.toImage())
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 1.05.toHeight(),
                                              width: context.screenWidth()*.20,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                  gradient: GradientUtils.progressBarGrident,
                                                  borderRadius: BorderRadius.circular(2.toImage())
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        children: [
                          MyDivider(),
                          Container(
                            height: 9.2.toHeight(),
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 5.8.toWidth()),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(left: 9.toWidth()),
                                    child: Text('Vertificar correo',style: TextStyleUtils().darkMediumMedium,)),
                                Image.asset(ImageUtils.notTicked,width: 4.5.toImage(),height: 4.5.toImage(),)
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
                                Container(
                                    margin: EdgeInsets.only(left: 9.toWidth()),
                                    child: Text('Vertificar datos de facturación',style: TextStyleUtils().darkMediumMedium,)),
                                Image.asset(ImageUtils.notTicked,width: 4.5.toImage(),height: 4.5.toImage(),)
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
                                Container(
                                    margin: EdgeInsets.only(left: 9.toWidth()),
                                    child: Text('Verificar telefono',style: TextStyleUtils().darkMediumMedium,)),
                                Image.asset(ImageUtils.ticked,width: 4.5.toImage(),height: 4.5.toImage(),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    MyDivider(),
                    Container(
                        height: 7.toHeight(),
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 5.8.toWidth()),
                        child: Center(
                          child: Text('¿Necesitas Ayuda?',style: TextStyleUtils().darkSmallSemiBold,),
                        )
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
