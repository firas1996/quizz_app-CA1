import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/quiz-logo.png", width: 300),
        SizedBox(height: 50),
        Text(
          "Learn Flutter the fun way!",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        SizedBox(height: 50),
        OutlinedButton.icon(
          icon: Icon(Icons.arrow_right_alt),
          onPressed: () {},
          label: Text(
            "Start Quiz",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
