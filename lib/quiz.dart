import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/questions_screen.dart';
import 'package:quizz_app/results_screen.dart';
import 'package:quizz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = "start-screen";
  void startQuiz() {
    setState(() {
      selectedAnswers = []; // remise a 0
      activeScreen = "questions-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "results-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activeWidget = StartScreen(startQuiz);
    if (activeScreen == "questions-screen") {
      activeWidget = QuestionsScreen(chooseAnswer);
    }
    if (activeScreen == "results-screen") {
      activeWidget = ResultsScreen(selectedAnswers, startQuiz);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 33, 1, 87),
                const Color.fromARGB(255, 39, 9, 90),
              ],
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
            ),
          ),
          child: activeWidget,
        ),
      ),
    );
  }
}
