
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

class EditProfile extends StatelessWidget {
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
                    child: Text('Cuenta',style: TextStyleUtils().darkBigSemiBold,)),
                Container(
                  height: 8.5.toHeight(),
                  margin: EdgeInsets.only(top: 8.toHeight(),left: 5.8.toWidth(),right: 5.8.toWidth()),
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
                      Text('Cuenta',style: TextStyleUtils().hintTextStyle,),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('David Olvidares',style: TextStyleUtils().darkMediumMedium,),
                          SizedBox(width: .5.toWidth(),),
                          Image.asset(ImageUtils.pencil,width: 4.toImage(),height: 4.toImage(),)
                        ],
                      )
                    ],
                  ),
                ),
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
                      Text('Correo',style: TextStyleUtils().hintTextStyle,),
                      Text('david@3genios.com',style: TextStyleUtils().darkMediumMedium,),
                    ],
                  ),
                ),
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
                      Text('Teléfono',style: TextStyleUtils().hintTextStyle,),
                      Text('8115432666',style: TextStyleUtils().darkMediumMedium,),
                    ],
                  ),
                ),
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
                      Text('Localización',style: TextStyleUtils().hintTextStyle,),
                      Text('Monterrey, NL.',style: TextStyleUtils().darkMediumMedium,),
                    ],
                  ),
                )
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
