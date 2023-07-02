import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  List<String> choosenAnswers = [];



  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    choosenAnswers.add(answer);
    if (choosenAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }
  void restartQuiz() {
    setState(() {
      choosenAnswers = [];
      activeScreen = 'questions-screen';
    });
  }
  @override
  Widget build(BuildContext context) {
    Widget widgetScreen = activeScreen == 'start-screen'
        ? StartScreen(switchScreen)
        : activeScreen == 'questions-screen'
            ? QuestionsScreen(
                onChooseAnswer: chooseAnswer,
              )
            : ResultsScreen(
                choosenAnswers: choosenAnswers,
                onRestart: restartQuiz,
              );

    return MaterialApp(
      home: Scaffold(
        // body: GeneralContainer(Colors.white, Colors.blueGrey),
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.blueGrey],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Center(
              child: widgetScreen,
            )),
      ),
    );
  }
}
