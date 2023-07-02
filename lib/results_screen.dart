import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> choosenAnswers;
  final void Function() onRestart;
  const ResultsScreen(
      {super.key, required this.choosenAnswers, required this.onRestart});

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'questions': questions[i].question,
        'correct_answer': questions[i].answer[0],
        'chossen_answer': choosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final questionsNumber = questions.length;
    final correct = summaryData.where((data) {
      return data['chossen_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'You answered $correct out of $questionsNumber correctly !',
              style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            FilledButton.icon(
              onPressed: onRestart,
              style: FilledButton.styleFrom(
                  backgroundColor: const Color.fromARGB(97, 17, 16, 16),
                  textStyle: const TextStyle(fontSize: 28)),
              icon: const Icon(Icons.refresh),
              label: const Text(
                'Restart quiz',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
