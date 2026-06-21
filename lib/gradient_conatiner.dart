import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

var gradientBegin = Alignment.topLeft;
final gradientEnd = Alignment.bottomRight;


class GradientContainer extends StatelessWidget {
final List<MaterialColor> gradientColors;
const GradientContainer(this.gradientColors, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container( 
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors,
              begin: gradientBegin,
              end: gradientEnd
            ),
          ),
          child:DiceRoller()
        );
  }
}