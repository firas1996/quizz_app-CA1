import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/my_button.dart';

class QuestionsScreen extends StatefulWidget {
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
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
            return MyButton(label: item, onClick: () {});
          }),

          // ElevatedButton(onPressed: () {}, child: Text("Answer2")),
          // ElevatedButton(onPressed: () {}, child: Text("Answer3")),
          // ElevatedButton(onPressed: () {}, child: Text("Answer4")),
        ],
      ),
    );
  }
}
