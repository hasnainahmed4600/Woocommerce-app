// import 'package:diinsel/lib/ui/main_view/shopping_list.dart';
import 'package:diinsel/widgets/back_grey.dart';
import 'package:diinsel/widgets/rounded_purple_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:page_transition/page_transition.dart';
import 'package:diinsel/ui/main_view/shopping_list.dart';

import 'package:diinsel/utils/extensions.dart';

import '../utils/color_utils.dart';
import '../utils/image_utils.dart';
import '../utils/image_utils.dart';
import '../utils/text_style_utils.dart';

class CartsView extends StatefulWidget {
  @override
  _CartsViewState createState() => _CartsViewState();
}

class _CartsViewState extends State<CartsView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
            margin: EdgeInsets.only(top: 5.8.toHeight(), right: 5.8.toWidth()),
            child: Image.asset(
              ImageUtils.searchGreyIcon,
              width: 4.3.toImage(),
              height: 4.3.toImage(),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: EdgeInsets.only(top: 13.5.toHeight(), left: 5.8.toWidth()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Carrito',
                      style: TextStyleUtils().workGreySemiBold1,
                    )),
                SizedBox(
                  height: 2.5.toHeight(),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    ImageUtils.boxImage,
                    width: 57.toImage(),
                    height: 57.toImage(),
                  ),
                ),
                SizedBox(
                  height: 3.5.toHeight(),
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Tu lista esta vacia',
                      style: TextStyleUtils().workOrangeRedBold,
                    )),
                SizedBox(
                  height: 4.toHeight(),
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.toWidth()),
                      child: Text(
                        'TCree una lista y agréguela a su carrito para una experiencia de compra más fácil',
                        style: TextStyleUtils().workGreyMedium1,
                        textAlign: TextAlign.center,
                      ),
                    )),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: RoundedPurpleButton(
            buttonText: 'Añadir lista',
            textStyle: TextStyleUtils().buttonTextStyle2,
            height: 6.8.toHeight(),
            isBusy: false,
            bottomMargin: 2.5.toHeight(),
            horizontalMargin: 5.8.toWidth(),
            onButtonPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: ShoppingList()));
            },
          ),
        )
      ],
    );
  }
}
