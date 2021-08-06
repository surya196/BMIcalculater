import 'package:flutter/material.dart';

class IconWIdget extends StatelessWidget {
  final String? gender;
  final IconData? icon;
  IconWIdget({this.gender, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender!,
          style: TextStyle(
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }
}
