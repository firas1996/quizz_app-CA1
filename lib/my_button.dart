import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.label, required this.onClick});
  final String label;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      child: Text(label),
      style: ElevatedButton.styleFrom(),
    );
  }
}
