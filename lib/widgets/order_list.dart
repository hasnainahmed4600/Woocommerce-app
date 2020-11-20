

import 'package:diinsel/widgets/my_check_box.dart';
import 'package:diinsel/widgets/rounded_purple_button.dart';
import 'package:flutter/material.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:gradient_text/gradient_text.dart';

import '../utils/color_utils.dart';
import '../utils/gradient_utils.dart';
import '../utils/image_utils.dart';

import '../utils/text_style_utils.dart';

class OrderList extends StatefulWidget {

  final VoidCallback onTap;
  OrderList({
    @required this.onTap,
  });

  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  bool firstBool = false;
  bool secondBool = false;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 0.0,
      backgroundColor: Colors.white,
      child: dialogContent(context),

    );
  }

  Widget dialogContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(height: 1.toHeight(),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 5.8.toWidth()),
              child: GradientText('Listas de pedido',
                  gradient: GradientUtils.mainGradient,
                  style : TextStyleUtils().workPurpleSemiBold
              ),
            ),
            IconButton(icon: Image.asset(ImageUtils.crossGreyIcon,width: 7.toImage(),height: 7.toImage(),), onPressed: (){
              Navigator.pop(context);
            })
          ],
        ),
        Container(
          height: 4.5.toHeight(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 1.5.toWidth()),
                child: Theme(
                  data: ThemeData(unselectedWidgetColor: Color(0XFF9B9B9B).withOpacity(.5),),
                  child: MyCheckBox(
                    tristate : false,
                    checkColor: MyColors.orangeRed,
                    activeColor: MyColors.orangeRed.withOpacity(.15),
                    focusColor: Color(0XFF9B9B9B).withOpacity(.5),
                    hoverColor: Color(0XFF9B9B9B).withOpacity(.5),
                    onChanged: (value){
                      firstBool = value;
                      setState(() {});
                    },
                    value: firstBool,

                  ),
                ),
              ),
              SizedBox(width: 1.toWidth(),),
              Text('Prelista Proximo Mes',style: TextStyleUtils().workGreyMedium1,)
            ],
          ),
        ),
        Container(
          height: 4.5.toHeight(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 1.5.toWidth()),
                child: Theme(
                  data: ThemeData(unselectedWidgetColor: Color(0XFF9B9B9B).withOpacity(.5),),
                  child: MyCheckBox(
                    tristate : false,
                    checkColor: MyColors.orangeRed,
                    activeColor: MyColors.orangeRed.withOpacity(.15),
                    focusColor: Color(0XFF9B9B9B).withOpacity(.5),
                    hoverColor: Color(0XFF9B9B9B).withOpacity(.5),
                    onChanged: (value){
                      secondBool = value;
                      setState(() {});
                    },
                    value: secondBool,

                  ),
                ),
              ),
              SizedBox(width: 1.toWidth(),),
              Text('Prelista Proximo Mes',style: TextStyleUtils().workGreyMedium1,)
            ],
          ),
        ),
        Container(
          height: 4.5.toHeight(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 5.5.toWidth()),
                child: Image.asset(ImageUtils.addGreyIcon,width: 5.toImage(),height: 5.toImage(),)
              ),
              SizedBox(width: 4.6.toWidth(),),
              Text('Crear nuevo',style: TextStyleUtils().workGreyMedium2,)
            ],
          ),
        ),
        SizedBox(height: 2.toHeight(),),
        Row(
          children: [
            SizedBox(width: 4.toWidth(),),
            Expanded(
              child: RoundedPurpleButton(buttonText: 'Añadir',textStyle:
              TextStyleUtils().buttonTextStyle2,height: 5.5.toHeight(),isBusy: false,),
            ),
            SizedBox(width: 2.toWidth(),),
            Expanded(
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height: 5.5.toHeight(),
                  child: Center(
                    child: Text('Cancelar',style: TextStyleUtils().workGreyRegular1,),
                  ),
                ),
              ),
            ),
            SizedBox(width: 4.toWidth(),),
          ],
        ),
        SizedBox(height: 1.5.toHeight(),),
      ],
    );
  }
}