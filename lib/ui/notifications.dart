import 'package:diinsel/ui/transfer_to_account.dart';
import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/gradient_utils.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/widgets/back_button.dart';
import 'package:diinsel/widgets/my_divider.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
class Notifications extends StatelessWidget {
  final images = [ImageUtils.superWalletImage1,ImageUtils.superWalletImage2,ImageUtils.superWalletImage3];
  final titles = ['Felicidades ganaste un Ipad','Tu donación ha sido recibida','Confirmación de transferencia'];
  final subTexts = ['Hace 2min','Hace 10 dias','Hace 30 días'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
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
                child: Text('Notificaciones',style: TextStyleUtils().darkBigSemiBold,)),
            SizedBox(height: 3.3.toHeight(),),
            Expanded(
              child: MediaQuery.removePadding(context: context,
                  removeTop: true,
                  child: ListView.separated(itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  TransferToAccount()));
                      },
                      child: Container(
                        height: 12.2.toHeight(),
                        padding: EdgeInsets.symmetric(horizontal: 5.8.toWidth()),
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 2.toHeight()),
                              child: Row(
                                children: [
                                  Container(
                                    height: 11.4.toImage(),
                                    width: 11.4.toImage(),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(1.5.toImage()),
                                      boxShadow: [BoxShadow(
                                        color: Colors.black.withOpacity(.15),
                                        blurRadius: 3.toImage(),
                                        offset: Offset(0,3)
                                      )]
                                    ),
                                    child: Center(
                                      child: Image.asset(images[index],width: 10.toImage(),height: 10.toImage(),),
                                    ),
                                  ),
                                  SizedBox(width: 5.toWidth(),),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(titles[index],style: TextStyleUtils().darkMediumMedium,),
                                      Text(subTexts[index],style: TextStyleUtils().hintTextStyle1,)
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                margin: EdgeInsets.only(bottom: 2.toHeight(),right: 2.toWidth()),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('Entra',style: TextStyleUtils().greySmallMedium2,),
                                    SizedBox(width: 1.5.toWidth(),),
                                    Image.asset(ImageUtils.rightArrow2,width: 2.toImage(),height: 2.toImage(),)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }, separatorBuilder: (context,index){
                    return MyDivider();
                  }, itemCount: 3)),
            )
          ],
        ),
      ),
    );
  }
}
