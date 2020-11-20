import 'package:diinsel/utils/color_utils.dart';
import 'package:flutter/material.dart';


class MyDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity,height: 1,color: MyColors.grey3.withOpacity(.1),);
  }
}
