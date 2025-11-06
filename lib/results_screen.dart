import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen(this.selectedAnswers, this.startQuiz, {super.key});
  final List<String> selectedAnswers;
  final void Function() startQuiz;
  var successRate = 0;
  List<Map<String, Object>> getFinalResults() {
    final List<Map<String, Object>> finalResults = [];
    print("aaa");
    for (var i = 0; i < selectedAnswers.length; i++) {
      print(questions[i].answers[0]);
      print(selectedAnswers[i]);
      print(questions[i].answers[0] == selectedAnswers[i]);
      if (questions[i].answers[0] == selectedAnswers[i]) {
        successRate++;
      }
      print(successRate);
      finalResults.add({
        "index": i,
        "question": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "user_answer": selectedAnswers[i],
      });
    }
    return finalResults;
  }

  @override
  Widget build(BuildContext context) {
    final ss = getFinalResults()
        .where((data) => data["correct_answer"] == data["user_answer"])
        .length;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Results Screen',
            style: TextStyle(color: Colors.white, fontSize: 32),
          ),
          Text(
            'You answered $ss out of ${questions.length} questions correctly!',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 500,
            width: 300,
            child: ListView.builder(
              itemCount: getFinalResults().length,
              itemBuilder: (ctx, index) =>
                  Text(getFinalResults()[index].toString()),
            ),
          ),

          // SizedBox(
          //   height: 500,
          //   width: 300,
          //   child: SingleChildScrollView(
          //     child: Column(
          //       children: getFinalResults().map((data) {
          //         return Text(
          //           'Q${(data["index"] as int) + 1}: ${data["question"]}\nYour answer: ${data["user_answer"]} | Correct answer: ${data["correct_answer"]}\n',
          //           style: TextStyle(color: Colors.white, fontSize: 16),
          //         );
          //       }).toList(),
          //     ),
          //   ),
          // ),
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
