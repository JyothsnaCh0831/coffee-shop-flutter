import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  const BottomText(
      {super.key, required this.normalText, required this.boldText});

  final String normalText;
  final String boldText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          normalText,
          style: TextStyle(
            color: Colors.brown.shade500,
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Text(
          boldText,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.brown,
          ),
        ),
      ],
    );
  }
}
