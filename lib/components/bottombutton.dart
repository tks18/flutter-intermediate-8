import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class Bottombutton extends StatelessWidget {
  Bottombutton({@required this.navigation,@required this.text});

  final Function navigation;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigation,
      child: Container(
        height: kBottomContainerHeight,
        width: double.infinity,
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            text,
            style: kLargeTextStyle,
          ),
        ),
      ),
    );
  }
}
