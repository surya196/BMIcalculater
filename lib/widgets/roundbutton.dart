import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final IconData? icon;
  final Function? onpresed;
  RoundButton({this.icon, this.onpresed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onpresed!(),
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4c4f5E),
    );
  }
}