

import 'package:diinsel/ui/main_view/category_details.dart';
import 'package:diinsel/widgets/my_tab_bar.dart' as myTabBar;
import 'package:diinsel/widgets/rounded_purple_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:page_transition/page_transition.dart';

import '../../utils/color_utils.dart';
import '../../utils/gradient_utils.dart';
import '../../utils/image_utils.dart';
import 'package:diinsel/utils/extensions.dart';
import '../../utils/text_style_utils.dart';
import '../../widgets/my_divider.dart';


class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  final images = [ImageUtils.product1,ImageUtils.product2,ImageUtils.product3,];
  final titles = ['D-Check® Frasco',' D-Check® 3 ',' D-Check® 5',];
  final descriptions = ['Alcholimetros','Detección de drogas','Tiras reactivas',];
  final costs = ['\$400.99','\$120.00','\$350.00',];
  final counts = ['10','1','15',];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  return Stack(
    children: [
      Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: 26.toHeight(),
         child: Stack(
           children: [
             Align(
               alignment: Alignment.topCenter,
               child: Image.asset(ImageUtils.ordersViewBg,height: 26.toHeight(),width: double.infinity,fit: BoxFit.cover,),
             ),
             Align(alignment: Alignment.topRight,child: Container(
               margin: EdgeInsets.only(top: 5.8.toHeight(),right: 5.8.toWidth()),
               child: Image.asset(ImageUtils.searchWhiteIcon,width: 4.3.toImage(),height: 4.3.toImage(),),
             ),),
             Align(alignment: Alignment.topLeft,child: Container(
               margin: EdgeInsets.only(top: 13.5.toHeight(),left: 5.8.toWidth()),
               child: Text('Pedidos',style: TextStyleUtils().workWhiteSemiBold,),
             ),),
             Align(alignment: Alignment.topRight,child: Container(
               margin: EdgeInsets.only(top: 15.toHeight(),right: 5.8.toWidth()),
               child: Image.asset(ImageUtils.pencilWhite,width: 6.toImage(),height: 6.toImage(),),
             ),),
           ],
         ),
        ),
      ),
      Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 21.toHeight()),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8.toImage()),topRight: Radius.circular(8.toImage()))
          ),
          child: Column(
            children: [
              SizedBox(height: 9.5.toHeight(),),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.toWidth()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Articulos (03)',style: TextStyleUtils().workGreySemiBold,),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                      Image.asset(ImageUtils.removeGreyIcon,width: 5.toImage(),height: 5.toImage(),),
                      Text('Vaciar',style: TextStyleUtils().workGreyMedium3),
                    ],)
                  ],
                ),
              ),
              SizedBox(height: 2.5.toHeight(),),
              Expanded(
                child: MediaQuery.removePadding(context: context,removeTop: true, child: ListView.separated(itemBuilder: (context,index){
                  return Slidable(
                    actionPane: SlidableDrawerActionPane(),
                    direction: Axis.horizontal,
                    actionExtentRatio: .14,
                    secondaryActions : [SlideAction(onTap: (){
                    },closeOnTap: true,child: Container(color: MyColors.orangeRed,
                    child: Center(child: Icon(Icons.clear,color: Colors.white,size: 7.toImage(),)),))],
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.toWidth()),
                      padding: EdgeInsets.symmetric(vertical: 1.toHeight()),
                      child: Row(
                          children: [
                            Image.asset(images[index],width: 19.5.toImage(),height: 19.5.toImage(),),
                            SizedBox(width: 3.toWidth(),),
                            Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(titles[index],style: TextStyleUtils().abelGreyRegular,),
                                  Text(descriptions[index],style: TextStyleUtils().workGreyRegular2,),
                                  SizedBox(width: 2.toWidth(),),
                                  Text(costs[index],style: TextStyleUtils().workOrangeRedSemiBold1,)
                                ],
                            ),
                            Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(counts[index],style: TextStyleUtils().workGreyRegular3,),
                                SizedBox(width: 1.toWidth(),),
                                Container(
                                  height: 9.toHeight(),
                                  width: 5.5.toWidth(),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(color: MyColors.grey7.withOpacity(.4),width: 1)
                                  ),
                                child: Stack(
                                  children: [
                                    Column(
                                    children: [
                                      Expanded(
                                         child: Center(child: Icon(Icons.remove,color: MyColors.grey8,size: 4.toImage(),)),
                                      ),
                                      Expanded(
                                         child: Center(child: Icon(Icons.add,color: MyColors.grey8,size: 4.toImage(),)),
                                      ),
                                      ],
                                    ),
                                    Center(
                                      child: Container(
                                          width: 5.5.toWidth(),
                                          height: 1,
                                          color: MyColors.grey7.withOpacity(.4)
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                             SizedBox(width: 2.toWidth(),),
                              ],
                              ),
                            ),
                            ),
                            SizedBox(width: 2.toWidth(),),
                          ],
                      ),
                    ),
                  );
                },separatorBuilder: (context,index){
                  return SizedBox(height: 3.toHeight(),);
                },itemCount: 3,)),
              ),
              SizedBox(height: 2.5.toHeight(),),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.toWidth()),
                alignment: Alignment.topLeft,
                child: Text('Agregado por: Marta Lopez',style: TextStyleUtils().workGreyRegular4,),
              ),
              SizedBox(height: 3.toHeight(),),
              MyDivider(),
              SizedBox(height: 3.toHeight(),),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 5.toWidth()),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Total de artículos: 03',style: TextStyleUtils().workGreyMedium,),
                        Text('\$13,688.18',style: TextStyleUtils().workGreyMedium4,),
                        Text('Precio total (Incl. IVA)',style: TextStyleUtils().workGreyMedium5,),
                      ],
                    ),
                    SizedBox(width: 4.toWidth(),),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: RoundedPurpleButton(buttonText: 'Ordenar',textStyle:
                        TextStyleUtils().buttonTextStyle2,height: 6.8.toHeight(),isBusy: false,),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      )
    ],
  );
  }
}

class CategoriesPage extends StatelessWidget {
  final images = [ImageUtils.category1,ImageUtils.category2,ImageUtils.category3,ImageUtils.category4,ImageUtils.category5,ImageUtils.category6,];
  final titles = ['Toxicològicas','Alcolimetros','Enfermedades\nInfecciosas','Glucómetros','Uroanàlisis','Embarazo','Anticepticos','Art. Covid'];
  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(context: context, removeTop: true,
        child : GridView.builder( shrinkWrap: true, scrollDirection: Axis.vertical,gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            childAspectRatio:  (context.screenWidth()/(context.screenHeight()-40.5.toHeight()))),
            itemBuilder: (context,index){
              return InkWell(onTap :(){
                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  CategoryDetails()));
              },child: Container(

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(images[index],width: 30.toImage(),height: 30.toImage(),),
                    SizedBox(height: 1.toHeight(),),
                    Container(
                        height: 6.5.toHeight(),
                        child: Text(titles[index],style: TextStyleUtils().asapBlackRegular,textAlign: TextAlign.center,)),
                    Text('Descripción corta..',style: TextStyleUtils().asapGreyRegular,),
                  ],
                ),
              ),
              );
            },itemCount: images.length)
    );
  }
}
