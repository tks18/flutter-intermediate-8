import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/decocontainer.dart';
import 'package:bmi_calculator/components/deficon.dart';
import 'package:bmi_calculator/constants.dart';
import 'results_page.dart';
import 'package:bmi_calculator/components/bottombutton.dart';
import 'package:bmi_calculator/components/roundedbutton.dart';
import 'package:bmi_calculator/brain.dart';

enum Gender {
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

Gender selectedcolor;
int height = 180;
int weight = 60;
int age = 15;
String bottomButtonText = 'Calculate';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Decocontainer(
                    gesture: () {
                      setState(() {
                        selectedcolor = Gender.male;
                      });
                    },
                      colour: selectedcolor == Gender.male ? kActiveCardColor : kInactiveCardColor,
                      cardchild: Deficon(
                        cardicon: FontAwesomeIcons.mars,
                        icotext: 'Female',
                      ),
                    ),
                  ),
                Expanded(
                  child: Decocontainer(
                    gesture: () {
                      setState(() {
                        selectedcolor = Gender.female;
                      });
                    },
                    colour: selectedcolor == Gender.female ? kActiveCardColor : kInactiveCardColor,
                    cardchild: Deficon(
                      cardicon: FontAwesomeIcons.venus,
                        icotext: 'Female',
                      ),
                    ),
                  ),
               ],
            ),
          ),
          Expanded(
            child: Decocontainer(
              colour: kActiveCardColor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0XFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0XFFEB1555),
                      overlayColor: Color(0X29EB15555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();                          
                        });
                      }
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Decocontainer(
                    colour: kActiveCardColor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              state: () {
                                setState(() {
                                  weight++;                                  
                                });
                              },
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              state: () {
                                setState(() {
                                  weight--;                                  
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),),
                ),
                Expanded(
                  child: Decocontainer(
                    colour: kActiveCardColor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              state: () {
                                setState(() {
                                  age++;                                  
                                });
                              },
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              state: () {
                                setState(() {
                                  age--;                                  
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Bottombutton(
            text: bottomButtonText,
            navigation: () {
              setState(() {

                Brain calc = Brain(height: height, weight: weight);

                Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Results(
                      bmiresult: calc.results(),
                      bmihead: calc.bmicalc(),
                      bmianalysis: calc.bmianalysis(),
                      ),
                    ),
                  );
                }
              );
            },
          )
        ],
      ),
    );
  }
}
