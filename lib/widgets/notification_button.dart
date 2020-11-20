

import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/gradient_utils.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:flutter/material.dart';
import 'package:diinsel/utils/extensions.dart';

class NotificationButton extends StatelessWidget {

  final VoidCallback onButtonPressed;
  final double horizontalMargin;
  final double bottomMargin;
  final double topMargin;
  const NotificationButton({Key key,this.onButtonPressed,this.horizontalMargin, this.bottomMargin, this.topMargin}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 12.toImage(), maxWidth: 12.toImage(),minHeight: 12.toImage(),maxHeight:  12.toImage()), // min
      margin: EdgeInsets.only(left: horizontalMargin??0,right: horizontalMargin??0,top: topMargin??0,bottom: bottomMargin??0),
      child: Stack(
        children: [
          RaisedButton(
              onPressed: onButtonPressed,
              padding: const EdgeInsets.all(0.0),
              shape: CircleBorder(),
              color: Colors.white,
              disabledElevation: 0,
              elevation: 0,
              child: Center(
                child: Image.asset(ImageUtils.notificationIcon,width: 8.toImage(),height: 8.toImage(),),
              )
          ),
          Align(alignment: Alignment.topRight,
                child: Container(
                  height: 4.3.toImage(),
                  width: 4.3.toImage(),
                  margin: EdgeInsets.only(top: 2.toImage(),right: 1.toImage()),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MyColors.red
                  ),
                  child: Center(
                    child: Text('3',style: TextStyleUtils().whiteSmallMedium1,),
                  ),
                ),
          ),
        ],
      ),
    );
  }
}
