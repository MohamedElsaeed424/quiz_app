import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  final void Function(String answer) onChooseAnswer;

  const QuestionsScreen({super.key, required this.onChooseAnswer});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    widget.onChooseAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(158, 0, 0, 0),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            ...currentQuestion.getShuffledAnswers().map((answerItem) {
              return AnswerButton(
                answer: answerItem,
                onAnswer: () {
                  answerQuestion(answerItem);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
} 
