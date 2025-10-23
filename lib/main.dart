import 'package:flutter/material.dart';
import 'package:quizz_app/start_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: StartScreen(),
        ),
      ),
    );
  }
}
