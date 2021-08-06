
import 'package:flutter/cupertino.dart';


class Containers extends StatelessWidget {
  final Color color;
  final Widget? child;
final Function? onPress;
 Containers( {required this.color,  this.child,this.onPress} );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress!(),
        child: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}