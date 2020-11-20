
import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/gradient_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:flutter/material.dart';
import 'package:diinsel/utils/extensions.dart';
class PurpleButton extends StatelessWidget {
  final String buttonText;
  final bool isBusy;
  final VoidCallback onButtonPressed;
  final TextStyle textStyle;
  final double horizontalMargin;
  final double bottomMargin;
  final double topMargin;
  const PurpleButton({Key key, this.buttonText, this.onButtonPressed, this.isBusy, this.textStyle, this.horizontalMargin, this.bottomMargin, this.topMargin}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: horizontalMargin??0,right: horizontalMargin??0,top: topMargin??0,bottom: bottomMargin??0),
      child: RaisedButton(
        onPressed: isBusy? null : onButtonPressed,
        padding: const EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.2.toImage())),
        child: Ink(
          decoration:  BoxDecoration(
            gradient: GradientUtils.mainGradient,
            borderRadius: BorderRadius.circular(2.2.toImage()),
          ),
          child: Container(
            constraints: BoxConstraints(minWidth: double.infinity, minHeight: 7.2.toHeight(),maxHeight: 7.2.toHeight()), // min sizes for Material buttons
            alignment: Alignment.center,
            child: isBusy? SizedBox(height: 5.toImage(),width: 5.toImage(),
                child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.white),)):
            Center(
              child: Text(buttonText,style: textStyle?? TextStyleUtils().buttonTextStyle,
              ),
            ) ,
          ),
        ),
      ),
    );
  }
}
