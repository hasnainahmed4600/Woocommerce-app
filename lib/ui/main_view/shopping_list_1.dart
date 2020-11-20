import 'package:diinsel/widgets/back_grey.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:flutter/rendering.dart';

import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/utils/gradient_utils.dart';




class ShoppingList1 extends StatefulWidget {
  @override
  _ShoppingList1State createState() => _ShoppingList1State();
}

class _ShoppingList1State extends State<ShoppingList1> {

  final dates = ['08\nJul','20\nMay','10\nApr'];
  final titles = ['03 artículos','20 artículos','20 artículos'];
  final subTitle = ['Lista Planta Ternium','Lista de  Compra Junio','Insumos planta Mayos'];
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
                     child: MediaQuery.removePadding(context: context,removeTop: true,
                       child: ListView.separated(itemBuilder: (context,index)
                       {return Container(
                         height: 19.toHeight(),
                        child: Center(
                          child: Container(
                            height: 18.toHeight(),
                            child: Row(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(dates[index],style: index==2? TextStyleUtils().workGreyMedium7 : TextStyleUtils().workGreyMedium6,)),
                                SizedBox(width: 2.toWidth(),),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: index == 0 ? GradientUtils.gradient1 : index == 1? GradientUtils.gradient2 : null ,
                                     color: index == 0 || index == 1? null : MyColors.grey10,
                                      borderRadius: BorderRadius.circular(2.5.toImage()),
                                      boxShadow: [BoxShadow(
                                          color: Color(index == 0 ? 0xFF4A90E2 :index == 0 ? 0xFF50E3C2 : 0xFFD8D8D8).withOpacity(.6),
                                          blurRadius: 2.5.toImage(),
                                          offset: Offset(0,2)
                                      )],
                                    ),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Image.asset(ImageUtils.tiltedReciept,width: 33.5.toImage(),height: 33.5.toImage(),),
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                margin: EdgeInsets.only(top: 2.5.toHeight(),left: 6.toWidth()),
                                                child: Text(titles[index],style: TextStyleUtils().workWhiteBold,)),
                                            Container(
                                                margin: EdgeInsets.only(top: 3.5.toHeight(),left: 6.toWidth()),
                                                child: Text(subTitle[index],style: TextStyleUtils().workWhiteBold1,maxLines: 1,overflow: TextOverflow.ellipsis,)),
                                            Container(
                                              margin: EdgeInsets.only(top: .5.toHeight(),left: 6.toWidth()),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(ImageUtils.whiteProfileIcon,width: 6.toImage(),height: 6.toImage(),),
                                                  SizedBox(width: .5.toWidth(),),
                                                  Text('David Olivares',style: TextStyleUtils().workWhiteMedium,)
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                       );
                     },separatorBuilder: (context,index){
                         return SizedBox(height: 2.toHeight(),);
                       },itemCount: dates.length,)),
                    ),
                    SizedBox(height: 1.5.toHeight(),),
                    Container(
                      alignment: Alignment.topCenter,
                      child: RaisedButton(
                          onPressed: (){

                          },
                          padding: const EdgeInsets.all(0.0),
                          shape: CircleBorder(),
                          color: Colors.white,
                          disabledElevation: 0,
                          elevation: 0,
                          child: Ink(
                            decoration:  BoxDecoration(
                                gradient: GradientUtils.mainGradient,
                                shape: BoxShape.circle
                            ),
                            child: Container(
                              constraints: BoxConstraints(minWidth: 15.toImage(), maxWidth: 15.toImage(),minHeight: 15.toImage(),maxHeight:  15.toImage()),
                              child: Center(
                                child: Icon(Icons.add,color: Colors.white,size: 7.toImage(),),
                              ),
                            ),
                          )
                      ),
                    ),
                    SizedBox(height: 6.toHeight(),),
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

