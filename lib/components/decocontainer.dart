import 'package:flutter/material.dart';

class Decocontainer extends StatelessWidget {
  Decocontainer({@required this.colour,this.cardchild,this.gesture});
 
  final Color colour;
  final Widget cardchild;
  final Function gesture;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gesture,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
