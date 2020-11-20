import 'package:diinsel/utils/dialog_utils.dart';
import 'package:diinsel/widgets/back_white.dart';
import 'package:diinsel/widgets/my_tab_bar.dart' as myTabBar;
import 'package:diinsel/widgets/order_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:diinsel/utils/extensions.dart';

import '../../utils/color_utils.dart';
import '../../utils/color_utils.dart';
import '../../utils/color_utils.dart';
import '../../utils/gradient_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/text_style_utils.dart';
import '../../utils/text_style_utils.dart';
import '../../utils/text_style_utils.dart';
import '../../utils/text_style_utils.dart';

class CategoryDetails extends StatefulWidget {
  @override
  _CategoryDetailsState createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> with SingleTickerProviderStateMixin {
  TabController controller;
  int currentIndex = 0;
  final tabNames = ['Detección de drogas','Alcholimetros','Glucometros'];
  @override
  void initState() {
    controller = TabController(length: tabNames.length, vsync: this);
    controller.addListener(() {
      if(controller.index != currentIndex){
        currentIndex =  controller.index;
        setState(() {});
      }
    });
    super.initState();
  }
  List<Widget> getTabs(){
    return List.generate(tabNames.length, (index) => Container(
      height: 6.25.toHeight(),
      child: Center(
        child: Text(
            tabNames[index]
        ),
      ),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 31.1.toHeight(),
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset(ImageUtils.categoryDetailsBg,height: 31.1.toHeight(),width: double.infinity,fit: BoxFit.cover,),
                  Align(alignment: Alignment.topLeft,child: MyWhiteBackButton(topMargin: 4.5.toHeight(),horizontalMargin:3.toWidth(),
                          onButtonPressed: (){
                              Navigator.pop(context);
                          },
                      ),
                  ),
                  Align(alignment: Alignment.topRight,child: Container(
                    margin: EdgeInsets.only(top: 5.8.toHeight(),right: 5.8.toWidth()),
                    child: Image.asset(ImageUtils.searchWhiteIcon,width: 4.3.toImage(),height: 4.3.toImage(),),
                  ),),
                  Align(alignment: Alignment.topLeft,child: Container(
                    margin: EdgeInsets.only(top: 13.5.toHeight(),left: 5.8.toWidth()),
                    child: Text(tabNames[currentIndex],style: TextStyleUtils().workWhiteSemiBold),
                  ),),

                ],
              ),
            ),
            Container(
              height: 6.25.toHeight(),
              width: double.infinity,
              color: Color(0xFF979797).withOpacity(.1),
              child: myTabBar.MyTabBar(
                onTap: (index){
                  controller.animateTo(index,duration: Duration(milliseconds: 300));
                  setState(() {});
                },
                isScrollable: true,
                unselectedLabelStyle: TextStyleUtils().workLightGreyMedium,
                unselectedLabelColor:  MyColors.grey5.withOpacity(.5),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: GradientUtils.progressBarGrident),
                labelColor: MyColors.grey5,
                labelStyle: TextStyleUtils().workGreyMedium,
                controller: controller,
                tabs: getTabs(),
              ),
            ),
            Expanded(
              child: myTabBar.TabBarView(
                controller: controller,
                children: [
                  CategoryDetailsBody(),
                  CategoryDetailsBody(),
                  CategoryDetailsBody(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryDetailsBody extends StatelessWidget {
  final images = [ImageUtils.product1,ImageUtils.product2,ImageUtils.product3,ImageUtils.product4,];
  final titles = ['D-Check® Frasco',' D-Check® 3 ',' D-Check® 5','URO-ACON®',];
  final costs = ['\$400.99','\$120.00','\$350.00','\$500.99',];
  final counts = ['10','1','15','10',];
  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: GridView.builder( shrinkWrap: true, scrollDirection: Axis.vertical,gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          childAspectRatio:  (context.screenWidth()/(context.screenHeight()-40.5.toHeight()))),
          itemBuilder: (context,index){
            return InkWell(onTap :(){
              DialogUtils.showDialogWithAnimation(OrderList(
                  onTap: () {
                  }),context);
            },child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(images[index],width: 19.5.toImage(),height: 19.5.toImage(),),
                    SizedBox(height: 1.toHeight(),),
                    Text(titles[index],style: TextStyleUtils().abelGreyRegular,textAlign: TextAlign.center,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('1 pc',style: TextStyleUtils().workLightGreyMedium1,),
                        SizedBox(width: 4.toWidth(),),
                        Text(costs[index],style: TextStyleUtils().workOrangeRedSemiBold,),
                      ],
                    ),
                    SizedBox(height: 1.3.toHeight(),),
                    Container(
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              width: 26.toWidth(),
                              height: 3.toHeight(),
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: MyColors.grey7.withOpacity(.4),width: 1)
                              ),
                              child: Row(
                                children: [
                                  Container(width: 6.toWidth(),
                                    child: Center(
                                      child: Icon(Icons.remove,color: MyColors.grey8,size: 4.toImage(),),
                                    ),
                                  ),
                                  Container(
                                      width: 1,
                                      height: 3.toHeight(),
                                      color: MyColors.grey7.withOpacity(.4)
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Text(counts[index],style: TextStyleUtils().workGreyRegular,),
                                    ),
                                  ),
                                  Container(
                                      width: 1,
                                      height: 3.toHeight(),
                                      color: MyColors.grey7.withOpacity(.4)
                                  ),
                                  Container(width: 6.toWidth(),
                                    child: Center(
                                      child: Icon(Icons.add,color: MyColors.grey8,size: 4.toImage(),),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                margin: EdgeInsets.only(right: 4.toWidth()),
                                child: Image.asset(ImageUtils.cartWithGradientIcon,height: 6.5.toImage(),width: 6.5.toImage(),)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.only(top: 4.5.toHeight(),right: 5.toWidth()),
                    child: Image.asset(index == 0? ImageUtils.selectedOrdersWithBorderIcon : ImageUtils.ordersWithBorderIcon,width: 6.5.toImage(),height: 6.5.toImage(),),
                  ),
                )
              ],
            )
            );
          },itemCount: images.length),
    );
  }
}

