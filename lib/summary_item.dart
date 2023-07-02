import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['chossen_answer'] == itemData['correct_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int,
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  itemData['questions'] as String,
                  style: GoogleFonts.lato(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  itemData['correct_answer'] as String,
                  style: const TextStyle(
                      color: Color.fromARGB(197, 0, 129, 4), fontSize: 17),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  itemData['chossen_answer'] as String,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 92, 92, 92), fontSize: 17),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
