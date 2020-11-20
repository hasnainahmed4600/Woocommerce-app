
import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/gradient_utils.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:flutter/material.dart';
import 'package:diinsel/utils/extensions.dart';
class MyBackButton extends StatelessWidget {
  final VoidCallback onButtonPressed;
  final double horizontalMargin;
  final double bottomMargin;
  final double topMargin;
  const MyBackButton({Key key,this.onButtonPressed,this.horizontalMargin, this.bottomMargin, this.topMargin}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      constraints: BoxConstraints(minWidth: 10.toImage(), maxWidth: 10.toImage(),minHeight: 10.toImage(),maxHeight:  10.toImage()), // min
      margin: EdgeInsets.only(left: horizontalMargin??0,right: horizontalMargin??0,top: topMargin??0,bottom: bottomMargin??0),
      child: RaisedButton(
        onPressed: onButtonPressed,
        padding: const EdgeInsets.all(0.0),
        shape: CircleBorder(),
        color: Colors.white,
        disabledElevation: 0,
        elevation: 0,
        child: Center(
          child: Image.asset(ImageUtils.backArrow,width: 6.toImage(),height: 6.toImage(),),
        )
      ),
    );
  }
}
