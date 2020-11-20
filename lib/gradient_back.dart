import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //gradiente
    final gradiente = Container(
      height: 250,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.lightBlue,
            Colors.teal
          ],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1.0, 1.0),
          stops: [0.1, 0.8],
          tileMode: TileMode.clamp
        )
      ),
    );
    return gradiente;
  }

}