import 'package:flutter/material.dart';

import '../constant.dart';

class BottomButton extends StatelessWidget {
  final Function ontap;
  final String text;

  const BottomButton({required this.ontap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap(),
      child: Container(
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            text,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}