import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

class GeneralContainer extends StatelessWidget {
  final Color color1;
  final Color color2;

  const GeneralContainer(this.color1, this.color2, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: const Center(child: StartContainer()),
    );
  }
}
