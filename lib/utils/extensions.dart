

import 'package:diinsel/utils/screen_util.dart';
import 'package:diinsel/utils/size_config.dart';
import 'package:flutter/cupertino.dart';

extension MakeUiResponse on BuildContext{
  double screenHeight() {
    return ScreenUtil.getInstance().height.toDouble();
  }
  double screenWidth() {
    return ScreenUtil.getInstance().width.toDouble();
  }
  EdgeInsets getPadding(){
    return MediaQuery.of(this).padding;
  }
  void unFocus(){
    FocusScope.of(this).requestFocus(FocusNode());
  }
}
extension MakeUiResponse1 on num {
  double toHeight() {
    return SizeConfig.heightMultiplier* this;
  }
  double toWidth() {
    return SizeConfig.widthMultiplier* this;
  }
  double toText() {
    return SizeConfig.textMultiplier* this;
  }
  double toImage() {
    return SizeConfig.imageSizeMultiplier* this;
  }
}