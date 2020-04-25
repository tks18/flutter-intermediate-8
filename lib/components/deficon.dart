import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class Deficon extends StatelessWidget {
  const Deficon({this.cardicon, this.icotext});

  final IconData cardicon;
  final String icotext;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardicon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          icotext,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
