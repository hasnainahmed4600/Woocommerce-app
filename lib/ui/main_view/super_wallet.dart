import 'package:carousel_slider/carousel_slider.dart';
import 'package:diinsel/ui/authentication/change_password.dart';
import 'package:diinsel/ui/notifications.dart';
import 'package:diinsel/ui/settings.dart';
import 'package:diinsel/ui/transfer_to_account.dart';
import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/gradient_utils.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/widgets/back_button.dart';
import 'package:diinsel/widgets/notification_button.dart';
import 'package:diinsel/widgets/purple_button.dart';
import 'package:diinsel/widgets/purple_edged_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


class SuperWallet extends StatefulWidget {
  @override
  _SuperWalletState createState() => _SuperWalletState();
}

class _SuperWalletState extends State<SuperWallet> {
  final images = [ImageUtils.superWalletImage1,ImageUtils.superWalletImage2,ImageUtils.superWalletImage3,ImageUtils.superWalletImage4];
  final titles = ['Gana un Ipad mini','Donación 100% deducible','Transferir efectivo','Producto diinsel '];
  final descriptions = ['Valido hasta Sep 21','Fundacion Diinsel','de tus SuperWallet','Valido hasta Sep 21'];
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
       /*         Align(
                  alignment: Alignment.topLeft,
                  child: MyBackButton(
                    onButtonPressed: (){Navigator.of(context).pop();},
                    topMargin: 4.2.toHeight(),
                    horizontalMargin: 3.2.toWidth(),
                  ),
                ),*/
                Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 5.8.toWidth(),top: 13.toHeight()),
                    child: Text('SuperWallet',style: TextStyleUtils().darkBigSemiBold,)),
                Container(
                  height: 5.toHeight(),
                  margin: EdgeInsets.symmetric(horizontal: 5.8.toWidth(),vertical: 2.7.toHeight()),
                  padding: EdgeInsets.only(left: 1.toWidth()),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(.4)),
                    borderRadius: BorderRadius.circular(2.5.toImage())
                  ),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 9.toWidth(),right: 2.toWidth()),
                        child: TextField(
                          maxLines: 1,
                          style: TextStyleUtils().textFieldStyle1,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Introduce tu código de promoción',
                              hintStyle: TextStyleUtils().hintTextStyle1
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 2.toWidth()),
                          child: Image.asset(ImageUtils.searchIcon,width: 5.toImage(),height: 5.toImage(),))
                    ],
                  ),
                ),
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 5.8.toWidth(),top: 1.7.toHeight()),
                            child: Text('Preferencia especial',style: TextStyleUtils().greySmallMedium1,)),
                      ),
                      SliverToBoxAdapter(
                        child: Container(
                          height: 26.toHeight(),
                          margin: EdgeInsets.only(top: .5.toHeight()),
                          child: CarouselSlider(
                            items: [
                              LightBlueCard(),
                              CardPurple(),
                              LightBlueCard(),
                            ],
                            carouselController: CarouselController(

                            ),
                            options: CarouselOptions(
                              height: 22.toHeight(),
                              enableInfiniteScroll: false,
                              autoPlay: false,
                              enlargeCenterPage: true,
                              viewportFraction: .90,
                              enlargeStrategy: CenterPageEnlargeStrategy.height,
                              aspectRatio: 2,
                            ),
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 5.8.toWidth(),top: 4.2.toHeight()),
                            child: Text('Elige tu incentivo',style: TextStyleUtils().greySmallMedium1,)),
                      ),
                      SliverToBoxAdapter(
                        child: SizedBox(height: 3.2.toHeight(),),
                      ),
                      SliverList(delegate: SliverChildBuilderDelegate(
                          (context,index){
                           return Container(
                              height: 16.2.toHeight(),
                              margin: EdgeInsets.only(left: 5.8.toWidth(),right:  5.8.toWidth(),bottom: 7.toHeight()),
                              color: Colors.white,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.rectangle,
                                          boxShadow: [BoxShadow(
                                              color: Colors.black.withOpacity(.15),
                                              blurRadius: 2.5.toImage(),
                                              offset: Offset(2,3)
                                          )]
                                      ),
                                      margin: EdgeInsets.only(top: 2.5.toHeight(),right: 1.toWidth()),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              margin: EdgeInsets.only(left: 31.toWidth(),top: 3.toHeight()),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(titles[index],style: TextStyleUtils().greySmallMedium,),
                                                  Text(descriptions[index],style: TextStyleUtils().greySmallRegular3,)
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      margin: EdgeInsets.only(left: index == 2? 8.toWidth() :  .4.toWidth()),
                                      child: Image.asset(images[index],  width: index == 2? 18.toImage() : 33.toImage(),height: index == 2? 18.toImage() : 33.toImage(),),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: PurpleEdgedButton(buttonText: 'Elegir',
                                      textStyle: TextStyleUtils().buttonTextStyle1,
                                      isBusy: false,bottomMargin: 1.2.toHeight(),horizontalMargin: 2.5.toWidth(),
                                      onButtonPressed: (){
                                      if(index == 2){
                                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:   TransferToAccount()));
                                      }
                                      },),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      margin: EdgeInsets.only(top: 2.5.toHeight()),
                                      height: 11.toHeight(),
                                      width: 1.toWidth(),
                                      decoration: BoxDecoration(
                                          color: index ==0? MyColors.lightGreen : null,
                                          gradient: index ==0? null : GradientUtils.progressBarGrident
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        childCount: images.length
                      ))
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: NotificationButton(
                topMargin: 9.6.toHeight(),
                horizontalMargin: 5.8.toWidth(),
                onButtonPressed: (){
                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  Notifications()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardPurple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 1.5.toWidth()),
      decoration: BoxDecoration(
        gradient: GradientUtils.mainGradient,
        boxShadow: [BoxShadow(
          color: MyColors.gradientEnd.withOpacity(.5),blurRadius: 3.toImage(),offset: Offset(0,3)
        )],
        borderRadius: BorderRadius.circular(2.5.toImage())
      ),
      child: Stack(
        children: [
          Positioned(
            top: -(6.toHeight()),
            right: -(5.toWidth()) ,
            child: Container(
              width: 50.toWidth(),
              height: 50.toHeight(),
              decoration: BoxDecoration(shape: BoxShape.circle,gradient: RadialGradient(
                colors: [Colors.white.withOpacity(.01),Colors.white.withOpacity(.08)]
              ),
              ),
            ),
          ),
          Positioned(
            top: -(14.5.toHeight()),
            right :-(6.toWidth()),
            child: Container(
              width: 34.5.toWidth(),
              height: 34.5.toHeight(),
              decoration: BoxDecoration(shape: BoxShape.circle,gradient: RadialGradient(
              colors: [Colors.white.withOpacity(.01),Colors.white.withOpacity(.08)]
              ),
            ),
          ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              margin: EdgeInsets.only(top: 3.toHeight(),left: 6.5.toWidth()),
              child: Text('SuperWallet Diinsel',style: TextStyleUtils().whiteSmallMedium,),
            ),
            Container(
              margin: EdgeInsets.only(top: 1.toHeight(),left: 6.5.toWidth()),
              child: Text('\$12,000 MXN',style: TextStyleUtils().whiteBigSemiBold1,),
            ),
          Container(
          margin: EdgeInsets.only(top: 3.2.toHeight(),left: 6.5.toWidth()),
          child: Text('Wallet No.',style: TextStyleUtils().whiteSmallMedium2,),
          ),
        Container(
        margin: EdgeInsets.only(top: .7.toHeight(),left: 6.5.toWidth()),
        child: Text('1234   5678   9012   3273',style: TextStyleUtils().whiteSmallSemiBold,),
              ),
          ],)
        ],
      ),
    );
  }
}
class LightBlueCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.5.toWidth()),
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: GradientUtils.lightBlueGradient,
          boxShadow: [BoxShadow(
              color: MyColors.blueGradientEnd.withOpacity(.5),blurRadius: 3.toImage(),offset: Offset(0,3)
          )],
          borderRadius: BorderRadius.circular(2.5.toImage())
      ),
      child: Stack(
        children: [
          Positioned(
            top: -(6.toHeight()),
            right: -(5.toWidth()) ,
            child: Container(
              width: 50.toWidth(),
              height: 50.toHeight(),
              decoration: BoxDecoration(shape: BoxShape.circle,gradient: RadialGradient(
                  colors: [Colors.white.withOpacity(.01),Colors.white.withOpacity(.08)]
              ),
              ),
            ),
          ),
          Positioned(
            top: -(14.5.toHeight()),
            right :-(6.toWidth()),
            child: Container(
              width: 34.5.toWidth(),
              height: 34.5.toHeight(),
              decoration: BoxDecoration(shape: BoxShape.circle,gradient: RadialGradient(
                  colors: [Colors.white.withOpacity(.01),Colors.white.withOpacity(.08)]
              ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 3.toHeight(),left: 6.5.toWidth()),
                child: Text('SuperWallet Diinsel',style: TextStyleUtils().whiteSmallMedium,),
              ),
              Container(
                margin: EdgeInsets.only(top: 1.toHeight(),left: 6.5.toWidth()),
                child: Text('\$12,000 MXN',style: TextStyleUtils().whiteBigSemiBold1,),
              ),
              Container(
                margin: EdgeInsets.only(top: 3.2.toHeight(),left: 6.5.toWidth()),
                child: Text('Wallet No.',style: TextStyleUtils().whiteSmallMedium2,),
              ),
              Container(
                margin: EdgeInsets.only(top: .7.toHeight(),left: 6.5.toWidth()),
                child: Text('1234   5678   9012   3273',style: TextStyleUtils().whiteSmallSemiBold,),
              ),
            ],)
        ],
      ),
    );
  }
}
