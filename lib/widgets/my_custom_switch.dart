

import 'package:diinsel/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:diinsel/utils/extensions.dart';
class MyCustomSwitch extends StatefulWidget {
  @override
  _MyCustomSwitchState createState() => _MyCustomSwitchState();
}

class _MyCustomSwitchState extends State<MyCustomSwitch> {
  bool isTurnedOn = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: (){
        setState(() {
          isTurnedOn = !isTurnedOn;
        });
      },
      child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.slowMiddle,
          height: 2.6.toHeight(),
          width: 8.4.toWidth(),
          padding: EdgeInsets.symmetric(horizontal: .2.toWidth()),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: isTurnedOn? [MyColors.blueGradientStart, MyColors.blueGradientEnd] : [MyColors.grey4, MyColors.grey4]),
              shape : BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(50))
          ),
          child: AnimatedAlign(
            alignment: isTurnedOn? Alignment.centerRight :Alignment.centerLeft,
            duration: Duration(milliseconds: 250),
            child: Container(
              //  margin: EdgeInsets.only(right: toCareTaker? 0 : 1.toWidth(), left: toCareTaker?1.toWidth() :0),
              width: 4.4.toImage(),
              height: 4.4.toImage(),
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                      color: Color(0xFF000000).withOpacity(.3),
                      blurRadius: 3.toImage(),
                      offset: Offset(0,1)
                  )],
                  shape: BoxShape.circle,
                  color: Colors.white
              ),
            ),
          )
      ),
    );
  }
}
