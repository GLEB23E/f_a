import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var aciv = 'assets/images/buffalo1.jpg';
  void click() {
    var dice = Random().nextInt(6);
    if (dice == 4) {
      dice = 2;
    }
    setState(() {
      aciv = 'assets/images/buffalo$dice.jpg';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(aciv, width: 200),
        const SizedBox(height: 40),
        OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 116, 10, 3),
            ),
            onPressed: click,
            child: const Center(
              child: Text('clickme'),
            ))
      ],
    );
  }
}
