import 'package:diinsel/widgets/back_grey.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:flutter/rendering.dart';
import 'package:page_transition/page_transition.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/utils/gradient_utils.dart';
import 'package:diinsel/widgets/my_divider.dart';
import 'package:diinsel/widgets/purple_button.dart';
import 'package:diinsel/ui/settings.dart';



class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {

  @override
  void initState() {
    super.initState();
  }

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
                Align(alignment: Alignment.topLeft,child: Container(
                  margin: EdgeInsets.only(top: 13.5.toHeight(),left: 5.8.toWidth(),right: 5.8.toWidth()),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text('Perfil',style: TextStyleUtils().workGreySemiBold1,)),
                    ],
                  ),
                ),),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 4.toHeight(),right: 5.8.toWidth(),left: 5.8.toWidth()),
                  child: Row(
                    children: [
                      Image.asset(ImageUtils.profileImage,width: 30.toImage(),height: 30.toImage(),),
                      SizedBox(width: 3.toWidth(),),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Daniel Olivares',style: TextStyleUtils().darkMediumMedium1,),
                          Text('Monterrey, Nuevo Leon.',style: TextStyleUtils().darkMediumMedium2,),
                          SizedBox(height: 1.2.toHeight(),),
                          Text('Industrias 3Genios',style: TextStyleUtils().darkMediumSemiBold,),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height:9.toHeight(),),
                InkWell(
                  onTap: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  Settings()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 8.toHeight(),
                    color: Color(0xFFF3F3F3),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 5.toWidth()),
                        child: Text(
                          'Ajustes',style: TextStyleUtils().darkRegular1,
                        ),
                      ),
                    ),
                  ),
                ),
                MyDivider()
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: PurpleButton(
                horizontalMargin: 5.8.toWidth(),
                bottomMargin: 4.toHeight(),
                onButtonPressed: (){

                },
                textStyle: TextStyleUtils().buttonTextStyle,
                isBusy: false,
                buttonText: 'Cerrar sesión',

              ),
            )
          ],
        ),
      ),
    );
  }
}

