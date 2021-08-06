import 'package:bmicalculater/methods/calculator.dart';
import 'package:bmicalculater/screens/result.dart';
import 'package:bmicalculater/widgets/bottombutton.dart';
import 'package:bmicalculater/widgets/roundbutton.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../widgets/Icon.dart';
import '../widgets/containers.dart';

enum Gender {
  male,
  female,
}
int height = 180;
int weight = 50;
int age = 15;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Gender selectedGender;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('BMI calculator'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Containers(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: selectedGender == Gender.male
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      child: IconWIdget(
                        gender: 'MALE',
                        icon: Icons.male,
                      ),
                    ),
                    Containers(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender == Gender.female
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      child: IconWIdget(
                        gender: 'FEMALE',
                        icon: Icons.female,
                      ),
                    ),
                  ],
                ),
              ),
              Containers(
                  color: kActiveCardColour,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Height',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: kcolor,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFF8D8E98),
                          activeTrackColor: Color(0xFFEB1555),
                          thumbColor: Color(0XFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30),
                        ),
                        child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 220,
                            onChanged: (double newval) {
                              setState(() {
                                height = newval.round();
                              });
                            }),
                      )
                    ],
                  )),
              Row(
                children: [
                  Containers(
                    color: kActiveCardColour,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'weight',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              icon: Icons.minimize,
                              onpresed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundButton(
                              icon: Icons.maximize,
                              onpresed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Containers(
                    color: kActiveCardColour,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              icon: Icons.minimize,
                              onpresed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundButton(
                              icon: Icons.maximize,
                              onpresed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              BottomButton(
                  ontap: () {
                    Calculator cal = Calculator(height, weight);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Resultpage(
                                  bmiresult: cal.bmi(),
                                  resultindex: cal.result(),
                                  texxt: cal.bmiresult(),
                                )));
                  },
                  text: 'Calculate'),
            ],
          )),
    );
  }
}
