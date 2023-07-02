import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;
  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
          color: const Color.fromARGB(97, 17, 16, 16),
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
        FilledButton.icon(
          onPressed: startQuiz ,
          style: FilledButton.styleFrom(
              backgroundColor: const Color.fromARGB(97, 17, 16, 16),
              textStyle: const TextStyle(fontSize: 28)),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            'Start quiz',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
