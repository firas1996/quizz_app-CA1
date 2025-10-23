import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("data"),
          ElevatedButton(onPressed: () {}, child: Text("Answer1")),
          ElevatedButton(onPressed: () {}, child: Text("Answer2")),
          ElevatedButton(onPressed: () {}, child: Text("Answer3")),
          ElevatedButton(onPressed: () {}, child: Text("Answer4")),
        ],
      ),
    );
  }
}
