import 'package:bmicalculater/constant.dart';
import 'package:bmicalculater/widgets/bottombutton.dart';
import 'package:bmicalculater/widgets/containers.dart';
import 'package:flutter/material.dart';

class Resultpage extends StatelessWidget {
  final String bmiresult;
  final String resultindex;
  final String texxt;
  const Resultpage(
      {Key? key,
      required this.bmiresult,
      required this.resultindex,
      required this.texxt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15),
              child: Text(
                'Your Reslut',
                style: ktitleTextStyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: Containers(
                color: kActiveCardColour,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiresult,
                      style: resultTextStyle,
                    ),
                    Text(
                      resultindex,
                      style: BmiTextStyle,
                    ),
                    Text(texxt, style: BodyTextStyle),
                  ],
                ),
              )),
          BottomButton(
            ontap: () {
              Navigator.pop(context);
            },
            text: 'RE-calculate',
          )
        ],
      ),
    );
  }
}
