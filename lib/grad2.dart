import 'package:flutter/material.dart';

class Styledtxt extends StatelessWidget {
  const Styledtxt(this.txt, {super.key});
  final String txt;

  @override
  Widget build(context) {
    return Text(
      txt,
      style: const TextStyle(color: Colors.black, fontSize: 28),
    );
  }
}
