import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/decocontainer.dart';
import 'package:bmi_calculator/components/bottombutton.dart';

class Results extends StatelessWidget {

  final String bottomButtonText = 'Re-Calculate';

  Results({@required this.bmiresult,@required this.bmihead,@required this.bmianalysis});

  final bmiresult;
  final bmihead;
  final bmianalysis;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results',
                style: kTitleTextStyle
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Decocontainer(
              colour: kActiveCardColor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmihead,
                    style: kBMIindicatorstyle,
                  ),
                  Text(
                    bmiresult,
                    style: kBMIResult,
                  ),
                  Text(
                    bmianalysis,
                    textAlign: TextAlign.center,
                    style: kBMIAnalysis,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Bottombutton(
              navigation: (){
                Navigator.pop(context);
              },
              text: bottomButtonText,
            )
          )
        ],
      ),
    );
  }
}