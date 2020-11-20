
import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/gradient_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:flutter/material.dart';
import 'package:diinsel/utils/extensions.dart';
class PurpleEdgedButton extends StatelessWidget {
  final String buttonText;
  final bool isBusy;
  final VoidCallback onButtonPressed;
  final TextStyle textStyle;
  final double horizontalMargin;
  final double bottomMargin;
  final double topMargin;
  const PurpleEdgedButton({Key key, this.buttonText, this.onButtonPressed, this.isBusy, this.textStyle, this.horizontalMargin, this.bottomMargin, this.topMargin}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 16.toWidth(),maxWidth: 16.toWidth(), minHeight: 3.4.toHeight(),maxHeight: 3.4.toHeight()),
      margin: EdgeInsets.only(left: horizontalMargin??0,right: horizontalMargin??0,top: topMargin??0,bottom: bottomMargin??0),
      child: RaisedButton(
        onPressed: isBusy? null : onButtonPressed,
        padding: const EdgeInsets.all(0.0),
        child: Ink(
          decoration:  BoxDecoration(
            gradient: GradientUtils.mainGradient,
          ),
          child: Container(
              constraints: BoxConstraints(minWidth: 16.toWidth(),maxWidth: 16.toWidth(), minHeight: 3.4.toHeight(),maxHeight: 3.4.toHeight()), // min sizes for Material buttons
            alignment: Alignment.center,
            child: isBusy? SizedBox(height: 5.toImage(),width: 5.toImage(),
                child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.white),)):
            Center(
              child: Text(buttonText,style: textStyle?? TextStyleUtils().buttonTextStyle1,
              ),
            ) ,
          ),
        ),
      ),
    );
  }
}
