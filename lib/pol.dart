import 'package:f_a/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:f_a/grad2.dart';
import 'package:f_a/dice_roller.dart';

var startAligment = Alignment.topLeft;
var endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color, {super.key});
  final Color color;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color,
            const Color.fromARGB(255, 211, 227, 211),
          ],
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
