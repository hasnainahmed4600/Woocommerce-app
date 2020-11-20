
import 'package:diinsel/utils/color_utils.dart';
import 'package:diinsel/utils/gradient_utils.dart';
import 'package:flutter/material.dart';
import 'package:diinsel/utils/extensions.dart';
class Indicators extends StatelessWidget {
  final int selectedIndex;
  final int count;
  const Indicators({Key key, this.selectedIndex, this.count}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(count, (index) => Container(
        margin: EdgeInsets.only(right: 2.toWidth()),
        height: 1.75.toImage(),
        width: 1.75.toImage(),
        decoration: BoxDecoration(
          color: index == selectedIndex? null : MyColors.grey,
          gradient: index == selectedIndex? GradientUtils.mainGradient : null,
          shape: BoxShape.circle,
        ),
        ),
      ),
    );
  }
}
