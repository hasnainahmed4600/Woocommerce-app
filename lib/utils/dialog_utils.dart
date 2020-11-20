

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogUtils {

  static showDialogWithAnimation(Widget yourDialog,BuildContext context) =>  showGeneralDialog(
    transitionBuilder: (context, a1, a2, widget) {
      final curvedValue = Curves.easeInOutBack.transform(a1.value) -   1.0;
      final bouncyValue = Curves.bounceOut.transform(a1.value) -   1.0;
      return Transform(
        transform: Matrix4.translationValues(0.0, curvedValue * 200, 0.0),
        child: Opacity(
          opacity: a1.value,
          child: Transform(
            transform: Matrix4.translationValues(0.0, bouncyValue * 500, 0.0),
            child: yourDialog,
          ),
        ),
      );
    },
    transitionDuration: Duration(milliseconds: 400),

    pageBuilder: (context, animation1, animation2) {},
    barrierColor: Colors.black.withOpacity(.5),
    context: context,
    barrierLabel: '',
    barrierDismissible: true,
  );

}