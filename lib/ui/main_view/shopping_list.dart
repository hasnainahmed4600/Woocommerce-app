import 'package:diinsel/ui/main_view/shopping_list_1.dart';
import 'package:diinsel/widgets/back_grey.dart';
import 'package:diinsel/widgets/my_check_box.dart';
import 'package:diinsel/widgets/rounded_purple_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/utils/gradient_utils.dart';
import 'package:flutter/rendering.dart';
import 'package:page_transition/page_transition.dart';



class ShoppingList extends StatefulWidget {
  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  bool isChecked = false;
  @override
  void initState() {
    super.initState();
  }

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
          body: Stack(
            children: [
              Align(alignment: Alignment.topRight,child: Container(
                margin: EdgeInsets.only(top: 5.8.toHeight(),right: 5.8.toWidth()),
                child: Image.asset(ImageUtils.searchGreyIcon,width: 4.3.toImage(),height: 4.3.toImage(),),
              ),),
              Align(alignment: Alignment.topLeft,child: MyBackGreyButton(topMargin: 4.5.toHeight(),horizontalMargin:3.toWidth(),
                onButtonPressed: (){
                  Navigator.pop(context);
                },
              ),
              ),
              Align(alignment: Alignment.topLeft,child: Container(
                margin: EdgeInsets.only(top: 13.5.toHeight(),left: 5.8.toWidth(),right: 5.8.toWidth()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text('Lista de compras',style: TextStyleUtils().workGreySemiBold1,)),
                    SizedBox(height: 4.toHeight(),),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text('Agregar nombre de lista',style: TextStyleUtils().workGreyRegular5,)),
                            Container(
                              alignment: Alignment.topLeft,
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                maxLines: 1,
                                style: TextStyleUtils().workGreySemiBold2,
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
                                ),
                              ),
                            ),
                            SizedBox(height: 2.toHeight(),),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text('Fecha de vencimiento',style: TextStyleUtils().workGreyRegular5,)),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Stack(
                                children: [
                                  TextField(
                                    keyboardType: TextInputType.datetime,
                                    maxLines: 1,
                                    style: TextStyleUtils().workGreySemiBold2,
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
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: IconButton(
                                      icon: Image.asset(ImageUtils.calenderIcon1,width: 8.toImage(),height: 8.toImage(),),
                                      onPressed: null,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 13.toHeight(),),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text('Fijar prioridad',style: TextStyleUtils().workGreyRegular5,)),
                            SizedBox(height: 1.5.toHeight(),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      height: 16.toImage(),
                                      width: 16.toImage(),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          boxShadow: [BoxShadow(
                                              color: Color(0xFF4A90E2).withOpacity(.6),
                                              blurRadius: 2.5.toImage(),
                                              offset: Offset(0,2)
                                          )],
                                          gradient: GradientUtils.gradient1
                                      ),
                                    ),
                                    SizedBox(height: 1.toHeight(),),
                                    Text('Alto',style: TextStyleUtils().workLightGreyMedium,)
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      height: 16.toImage(),
                                      width: 16.toImage(),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          boxShadow: [BoxShadow(
                                              color: Color(0xFF50E3C2).withOpacity(.6),
                                              blurRadius: 2.5.toImage(),
                                              offset: Offset(0,2)
                                          )],
                                          gradient: GradientUtils.gradient2
                                      ),
                                    ),
                                    SizedBox(height: 1.toHeight(),),
                                    Text('Medio',style: TextStyleUtils().workLightGreyMedium,)
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      height: 16.toImage(),
                                      width: 16.toImage(),
                                      decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                              color: Color(0xFFF5A623).withOpacity(.6),
                                              blurRadius: 2.5.toImage(),
                                              offset: Offset(0,2)
                                          )],
                                          shape: BoxShape.circle,
                                          gradient: GradientUtils.gradient3
                                      ),
                                    ),
                                    SizedBox(height: 1.toHeight(),),
                                    Text('Bajo',style: TextStyleUtils().workLightGreyMedium,)
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 3.5.toHeight(),),
                            Container(
                              height: 4.5.toHeight(),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Theme(
                                      data: ThemeData(unselectedWidgetColor: Color(0XFF9B9B9B).withOpacity(.5),),
                                      child: MyCheckBox(
                                        tristate : false,
                                        checkColor: MyColors.orangeRed,
                                        activeColor: MyColors.orangeRed.withOpacity(.15),
                                        focusColor: Color(0XFF9B9B9B).withOpacity(.5),
                                        hoverColor: Color(0XFF9B9B9B).withOpacity(.5),
                                        onChanged: (value){
                                          isChecked = value;
                                          setState(() {});
                                        },
                                        value: isChecked,

                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 1.toWidth(),),
                                  Text('Hazlo predeterminado',style: TextStyleUtils().workGreyRegular5,)
                                ],
                              ),
                            ),
                            SizedBox(height: 5.5.toHeight(),),
                            RoundedPurpleButton(buttonText: 'Crear lista',textStyle: TextStyleUtils().buttonTextStyle2
                              ,height: 6.8.toHeight(),isBusy: false,bottomMargin: .5.toHeight(),onButtonPressed: (){
                                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  ShoppingList1()));
                              },),
                            InkWell(
                              onTap: (){

                              },
                              child: Container(
                                height: 6.8.toHeight(),
                                width: double.infinity,
                                child: Center(
                                  child: Text('Limpiar lista',style: TextStyleUtils().workGreyMedium1,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
               ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

