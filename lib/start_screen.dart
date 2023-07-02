import 'package:flutter/material.dart';

class StartContainer extends StatelessWidget {
  const StartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          'Learn Flutter the fun way !',
          style: TextStyle(fontSize: 28),
        ),
        const SizedBox(
          height: 50,
        ),
        FilledButton(
          onPressed: null,
          style: FilledButton.styleFrom(
              disabledBackgroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text(
            'Start quiz',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
