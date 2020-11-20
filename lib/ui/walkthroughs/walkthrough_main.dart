
import 'package:diinsel/ui/authentication/login.dart';
import 'package:diinsel/ui/walkthroughs/indicators.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/status_bar_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/widgets/purple_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class WalkThroughMain extends StatefulWidget {
  @override
  _WalkThroughMainState createState() => _WalkThroughMainState();
}

class _WalkThroughMainState extends State<WalkThroughMain> {
  final titles = ['Haz todas tus\nCompras','Diinsel premia\ntu lealtad','Crece con\nnosotros'];
  final descriptions = ['Ordena todos los productos Diinsel de la\ncomodidad de tu oficina 24/7',
                        'Crece con nosotros, y convierte en nuestro\nSocio Estrategico. ',
                        'Programa tus compras y obten\natractivas recompensas.'];
  final images = [ImageUtils.walkthrough1,ImageUtils.walkthrough2,ImageUtils.walkthrough3];
  final pageController = PageController(initialPage: 0);
  int selectedIndex = 0;
  @override
  void initState() {
    pageController.addListener(() {
      if(pageController.page.round() != selectedIndex){
        setState(() {
          selectedIndex = pageController.page.round();
        });
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Stack(
            children: [
              PageView.builder(itemBuilder: (context,index){
                return Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 5.8.toWidth(),top: 11.5.toHeight()),
                        child: Text(titles[index],style: TextStyleUtils().darkBigSemiBold,)),
                    Container(
                      alignment: Alignment.topCenter,
                      child: Image.asset(images[index],width: 71.toImage(),height: 71.toImage(),),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 5.8.toWidth(),top: 3.8.toHeight()),
                      child: Text(descriptions[index]
                        ,style: TextStyleUtils().greySmallRegular,),
                    )
                  ],
                );
              },itemCount: 3,controller: pageController,),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(bottom: 21.toHeight()),
                  child: Indicators(selectedIndex: selectedIndex,count: images.length,),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: PurpleButton(
                  buttonText: 'Empezar',
                  horizontalMargin: 5.8.toWidth(),
                  bottomMargin: 6.toHeight(),
                  onButtonPressed: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  Login()));
                  },
                  textStyle: TextStyleUtils().buttonTextStyle,
                  isBusy: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
