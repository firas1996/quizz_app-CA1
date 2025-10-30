import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.selectedAnswers, this.startQuiz, {super.key});
  final List<String> selectedAnswers;
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Results Screen',
            style: TextStyle(color: Colors.white, fontSize: 32),
          ),
          OutlinedButton.icon(
            icon: Icon(Icons.arrow_right_alt),
            onPressed: startQuiz,
            label: Text(
              "Start Quiz",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
