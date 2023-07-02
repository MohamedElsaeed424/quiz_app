import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final void Function() onAnswer;
  const AnswerButton({super.key, required this.answer, required this.onAnswer});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
          onPressed: onAnswer,
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              backgroundColor: const Color.fromARGB(97, 17, 16, 16),
              foregroundColor: Colors.black,
              textStyle: const TextStyle(fontSize: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
          child: Text(
            answer,
            textAlign: TextAlign.center,
          )),
    );
  }
}
