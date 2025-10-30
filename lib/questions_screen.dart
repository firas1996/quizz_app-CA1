import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/my_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var qIndex = 0;
  void answerdQuestion(String selectedAnswer) {
    setState(() {
      qIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[qIndex];
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Text(
            currentQuestion.text,
            style: TextStyle(color: Colors.white, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ...currentQuestion.createShuffledAnswers().map((item) {
            return MyButton(
              label: item,
              onClick: () {
                answerdQuestion(item);
              },
            );
          }),
        ],
      ),
    );
  }
}
